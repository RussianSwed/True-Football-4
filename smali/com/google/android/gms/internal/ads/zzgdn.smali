.class public abstract Lcom/google/android/gms/internal/ads/zzgdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.3.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgnk;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgnk;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdn;->zza:Lcom/google/android/gms/internal/ads/zzgnk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdn;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgdl;Lcom/google/android/gms/internal/ads/zzgnk;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdk;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgdk;-><init>(Lcom/google/android/gms/internal/ads/zzgnk;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdl;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgfd;Lcom/google/android/gms/internal/ads/zzfyq;)Lcom/google/android/gms/internal/ads/zzfxn;
    .param p2    # Lcom/google/android/gms/internal/ads/zzfyq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgnk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdn;->zza:Lcom/google/android/gms/internal/ads/zzgnk;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdn;->zzb:Ljava/lang/Class;

    return-object v0
.end method
