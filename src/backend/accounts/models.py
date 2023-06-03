# Create your models here.
from django.db import models

from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin, UserManager
from django.contrib.auth.validators import UnicodeUsernameValidator

from django.utils import timezone

from django.utils.translation import gettext_lazy as _

import uuid

from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver
from rest_framework.authtoken.models import Token


#@receiver(post_save, sender=settings.AUTH_USER_MODEL)
#def create_auth_token(sender, instance=None, created=False, **kwargs):
#   if created and instance is not None:
#        Token.objects.create(user=instance)


class CustomUser(AbstractBaseUser, PermissionsMixin):
    class Meta:
        verbose_name        = 'CustomUser'
        verbose_name_plural = 'CustomUser'
        #abstract            = True         #←ここをコメントアウトしないとカスタムユーザーモデルは反映されず、マイグレーションエラーを起こす。

    id          = models.UUIDField( default=uuid.uuid4, primary_key=True, editable=False )
    username    = models.CharField(
                    _('username'),
                    max_length=150,
                    help_text=_('Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.'),
                    unique=True,
                    default=None
                )

    profile_message = models.TextField(_('profile message'), default='', blank=True, null=True)

    #first_nameとlast_nameをひとまとめにした。
    handle_name = models.CharField(verbose_name="Handle_name", max_length=150, blank=True, null=True)

    email       = models.EmailField(_('email address'), unique=True)

    is_staff    = models.BooleanField(
                    _('staff status'),
                    default=False,
                    help_text=_('Designates whether the user can log into this admin site.'),
                )

    is_active   = models.BooleanField(
                    _('active'),
                    default=True,
                    help_text=_(
                        'Designates whether this user should be treated as active. '
                        'Unselect this instead of deleting accounts.'
                    ),
                )

    date_joined = models.DateTimeField(_('date joined'), default=timezone.now)

    profile_image = models.ImageField(upload_to = 'images/profile_images',default='samples/bird.jpeg', blank=True, null=True)

    following = models.ManyToManyField("self",related_name="followed_by",symmetrical=False, blank=True, default='')

    asset = models.JSONField(null=True,blank=True)

    notifications = models.JSONField(null=True, blank=True)

    team_id = models.CharField(max_length=255, default=None, blank=True, null=True)

    objects     = UserManager()

    USERNAME_FIELD     = 'username'
    EMAIL_FIELD = 'email'
    REQUIRED_FIELDS = ['email']


    """
        def clean(self):
            super().clean()
            self.email  = self.__class__.objects.normalize_email(self.email)

        def email_user(self, subject, message, from_email=None, **kwargs):
            send_mail(subject, message, from_email, [self.email], **kwargs)

    """
    def get_full_name(self):
        return self.handle_name

    def get_short_name(self):
        return self.handle_name

    def __str__(self):
        return self.username