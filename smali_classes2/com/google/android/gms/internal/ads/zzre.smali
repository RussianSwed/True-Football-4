.class final Lcom/google/android/gms/internal/ads/zzre;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@22.3.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzrg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrg;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzre;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzre;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Lcom/google/android/gms/internal/ads/zzrg;Landroid/os/Message;)V

    return-void
.end method
