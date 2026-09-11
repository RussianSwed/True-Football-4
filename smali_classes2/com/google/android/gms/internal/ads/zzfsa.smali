.class final Lcom/google/android/gms/internal/ads/zzfsa;
.super Lcom/google/android/gms/internal/ads/zzfqc;
.source "com.google.android.gms:play-services-ads@@22.3.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsc;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsc;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfqc;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/zzfsc;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/zzfsc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsc;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
