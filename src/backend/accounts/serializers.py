from rest_framework import serializers
from .models import CustomUser

class CustomUserSerializer(serializers.ModelSerializer):
    profile_image = serializers.SerializerMethodField()
    class Meta:
        model = CustomUser
        fields = (
            'username',
            'email',
            'profile_image',
            'date_joined'
        )
        read_only_fields = ('date_joined',)

    def get_profile_image(self, obj):
        if obj.profile_image:
            return obj.profile_image.url