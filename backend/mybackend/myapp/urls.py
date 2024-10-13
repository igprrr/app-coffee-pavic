from django.urls import path
from allauth.account.views import ConfirmEmailView

urlpatterns = [
    path('account-confirm-email/<key>/', ConfirmEmailView.as_view(), name='account_confirm_email'),
]
