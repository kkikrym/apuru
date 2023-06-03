from django.shortcuts import render

from rest_framework import viewsets, filters
from .models import CustomUser
from .serializers import CustomUserSerializer
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from dj_rest_auth.jwt_auth import JWTAuthentication,JWTCookieAuthentication
from rest_framework.permissions import AllowAny

class CustomUserViewSet(viewsets.ModelViewSet):
    queryset = CustomUser.objects.all()
    serializer_class = CustomUserSerializer
    #authentication_classes = (JWTAuthentication, JWTCookieAuthentication)
    #permission_classes = (IsAuthenticated, )
    permission_classes = (AllowAny, )
