.class final Lcom/google/android/gms/internal/ads/zzkh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.3.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zztl;
.implements Lcom/google/android/gms/internal/ads/zzxf;
.implements Lcom/google/android/gms/internal/ads/zzla;
.implements Lcom/google/android/gms/internal/ads/zzie;
.implements Lcom/google/android/gms/internal/ads/zzld;


# instance fields
.field private zzA:Z

.field private zzB:I

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:I

.field private zzH:Lcom/google/android/gms/internal/ads/zzkg;

.field private zzI:J

.field private zzJ:I

.field private zzK:Z

.field private zzL:Lcom/google/android/gms/internal/ads/zzih;

.field private zzM:J

.field private final zzN:Lcom/google/android/gms/internal/ads/zzjc;

.field private final zzO:Lcom/google/android/gms/internal/ads/zzic;

.field private final zza:[Lcom/google/android/gms/internal/ads/zzli;

.field private final zzb:Ljava/util/Set;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzlk;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzxg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzxh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzkk;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzxo;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzi:Landroid/os/HandlerThread;

.field private final zzj:Landroid/os/Looper;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcv;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzct;

.field private final zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzif;

.field private final zzo:Ljava/util/ArrayList;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzdz;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzkp;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzlb;

.field private final zzs:J

.field private zzt:Lcom/google/android/gms/internal/ads/zzlm;

.field private zzu:Lcom/google/android/gms/internal/ads/zzlc;

.field private zzv:Lcom/google/android/gms/internal/ads/zzkf;

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzli;Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzxh;Lcom/google/android/gms/internal/ads/zzkk;Lcom/google/android/gms/internal/ads/zzxo;IZLcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlm;Lcom/google/android/gms/internal/ads/zzic;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdz;Lcom/google/android/gms/internal/ads/zzjc;Lcom/google/android/gms/internal/ads/zzoc;Landroid/os/Looper;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    move-object/from16 v6, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzN:Lcom/google/android/gms/internal/ads/zzjc;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzd:Lcom/google/android/gms/internal/ads/zzxg;

    move-object v7, p3

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzxh;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzg:Lcom/google/android/gms/internal/ads/zzxo;

    const/4 v9, 0x0

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzC:Z

    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzt:Lcom/google/android/gms/internal/ads/zzlm;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    move-wide/from16 v10, p11

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzs:J

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Z

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzp:Lcom/google/android/gms/internal/ads/zzdz;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzM:J

    invoke-interface/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzkk;->zza()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:J

    .line 2
    invoke-interface/range {p4 .. p4}, Lcom/google/android/gms/internal/ads/zzkk;->zzf()Z

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzlc;->zzi(Lcom/google/android/gms/internal/ads/zzxh;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(Lcom/google/android/gms/internal/ads/zzlc;)V

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 4
    array-length v7, v1

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/google/android/gms/internal/ads/zzlk;

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzc:[Lcom/google/android/gms/internal/ads/zzlk;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzxg;->zzc()Lcom/google/android/gms/internal/ads/zzlj;

    move-result-object v8

    .line 6
    :goto_0
    array-length v10, v1

    if-ge v9, v7, :cond_0

    .line 7
    aget-object v10, v1, v9

    invoke-interface {v10, v9, v6}, Lcom/google/android/gms/internal/ads/zzli;->zzr(ILcom/google/android/gms/internal/ads/zzoc;)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzc:[Lcom/google/android/gms/internal/ads/zzlk;

    .line 8
    aget-object v11, v1, v9

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzli;->zzj()Lcom/google/android/gms/internal/ads/zzlk;

    move-result-object v11

    aput-object v11, v10, v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzc:[Lcom/google/android/gms/internal/ads/zzlk;

    .line 9
    aget-object v10, v10, v9

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/ads/zzlk;->zzF(Lcom/google/android/gms/internal/ads/zzlj;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzif;

    .line 10
    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzie;Lcom/google/android/gms/internal/ads/zzdz;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/IdentityHashMap;

    .line 12
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 13
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Ljava/util/Set;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcv;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzct;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzct;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    .line 16
    invoke-virtual {p2, p0, v3}, Lcom/google/android/gms/internal/ads/zzxg;->zzr(Lcom/google/android/gms/internal/ads/zzxf;Lcom/google/android/gms/internal/ads/zzxo;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Z

    const/4 v1, 0x0

    move-object/from16 v2, p14

    .line 17
    invoke-interface {v5, v2, v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzb(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzkp;

    .line 18
    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzkp;-><init>(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzei;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlb;

    .line 19
    invoke-direct {v2, p0, v4, v1, v6}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzla;Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzoc;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    .line 20
    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzi:Landroid/os/HandlerThread;

    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Landroid/os/Looper;

    .line 23
    invoke-interface {v5, v1, p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzb(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    return-void
.end method

.method private final zzA(Lcom/google/android/gms/internal/ads/zzli;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzif;->zzd(Lcom/google/android/gms/internal/ads/zzli;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzal(Lcom/google/android/gms/internal/ads/zzli;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzli;->zzo()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    return-void
.end method

.method private final zzB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    array-length v0, v0

    const/4 v0, 0x2

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzC([Z)V

    return-void
.end method

.method private final zzC([Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 3
    array-length v5, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzxh;->zzb(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Ljava/util/Set;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 5
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzli;->zzC()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 6
    array-length v6, v6

    const/4 v6, 0x1

    if-ge v4, v5, :cond_7

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzxh;->zzb(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8
    aget-boolean v7, p1, v4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 9
    aget-object v8, v8, v4

    .line 10
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 12
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v10

    if-ne v9, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 13
    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v10

    .line 14
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzxh;->zzb:[Lcom/google/android/gms/internal/ads/zzll;

    aget-object v11, v11, v4

    .line 15
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    aget-object v10, v10, v4

    .line 16
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzaj(Lcom/google/android/gms/internal/ads/zzxa;)[Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v12

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    const/16 v21, 0x1

    goto :goto_3

    :cond_4
    const/16 v21, 0x0

    :goto_3
    if-nez v7, :cond_5

    if-eqz v21, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Ljava/util/Set;

    .line 18
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v6, v6, v4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzkm;->zzf()J

    move-result-wide v17

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v19

    move-object v9, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v6

    .line 19
    invoke-interface/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/zzli;->zzp(Lcom/google/android/gms/internal/ads/zzll;[Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzvf;JZZJJ)V

    const/16 v6, 0xb

    new-instance v7, Lcom/google/android/gms/internal/ads/zzka;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzka;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    .line 22
    invoke-interface {v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzli;->zzq(ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 23
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzif;->zze(Lcom/google/android/gms/internal/ads/zzli;)V

    if-eqz v21, :cond_6

    .line 24
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzli;->zzH()V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 25
    :cond_7
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzg:Z

    return-void
.end method

.method private final zzD(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzih;->zzc(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzih;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzih;->zza(Lcom/google/android/gms/internal/ads/zzbw;)Lcom/google/android/gms/internal/ads/zzih;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2, p2}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(ZZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzlc;->zzf(Lcom/google/android/gms/internal/ads/zzih;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    return-void
.end method

.method private final zzE(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzk:Lcom/google/android/gms/internal/ads/zzto;

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 5
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzlc;->zzc(Lcom/google/android/gms/internal/ads/zzto;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    if-nez v0, :cond_2

    .line 6
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzc()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzp:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzt()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzq:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzh()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzZ(Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;)V

    :cond_4
    return-void
.end method

.method private final zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget-boolean v10, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzC:Z

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzlc;->zzj()Lcom/google/android/gms/internal/ads/zzto;

    move-result-object v0

    move-object v10, v0

    move-wide/from16 v19, v16

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    goto/16 :goto_12

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    .line 3
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzct;)Z

    move-result v19

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v19, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    :goto_1
    move-wide/from16 v23, v5

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v2, v8

    const/4 v11, 0x1

    move v3, v5

    const/4 v7, -0x1

    move v5, v10

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v21, v9

    const/4 v9, -0x1

    move-object v7, v14

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzy(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzkg;ZIZLcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v1, v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    .line 42
    :cond_3
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzkg;->zzc:J

    cmp-long v4, v2, v16

    if-nez v4, :cond_4

    .line 10
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v1

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    move-wide/from16 v1, v23

    const/4 v3, 0x0

    goto :goto_2

    .line 12
    :cond_4
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 14
    :goto_2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v6, v3

    const/4 v3, 0x0

    :goto_4
    move v10, v4

    move v4, v5

    move/from16 v22, v6

    const-wide/16 v7, 0x0

    :goto_5
    move-object/from16 v27, v15

    move v15, v3

    move-object/from16 v3, v27

    goto/16 :goto_a

    :cond_6
    move-object v11, v1

    move-object/from16 v21, v9

    const/4 v9, -0x1

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(Z)I

    move-result v1

    :goto_6
    move v4, v1

    move-object v3, v15

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    :goto_7
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    goto/16 :goto_a

    .line 17
    :cond_7
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 18
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v15

    move-object/from16 v7, p1

    .line 19
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzcw;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 20
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(Z)I

    move-result v1

    const/4 v3, 0x1

    goto :goto_8

    .line 21
    :cond_8
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    const/4 v3, 0x0

    :goto_8
    move v4, v1

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_5

    :cond_9
    cmp-long v1, v23, v16

    if-nez v1, :cond_a

    .line 22
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    goto :goto_6

    :cond_a
    if-eqz v19, :cond_c

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    const-wide/16 v7, 0x0

    .line 25
    invoke-virtual {v1, v2, v13, v7, v8}, Lcom/google/android/gms/internal/ads/zzcw;->zze(ILcom/google/android/gms/internal/ads/zzcv;J)Lcom/google/android/gms/internal/ads/zzcv;

    move-result-object v1

    .line 24
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcv;->zzo:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 27
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v1

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v5, v23

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 29
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_9

    :cond_b
    move-wide/from16 v1, v23

    :goto_9
    move-object v3, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x1

    goto :goto_a

    :cond_c
    const-wide/16 v7, 0x0

    move-object v3, v15

    move-wide/from16 v1, v23

    const/4 v4, -0x1

    goto/16 :goto_7

    :goto_a
    if-eq v4, v9, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 32
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v4, v1

    move-wide/from16 v1, v16

    goto :goto_b

    :cond_d
    move-wide v4, v1

    :goto_b
    move-object/from16 v6, v21

    .line 34
    invoke-virtual {v6, v12, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzkp;->zzh(Lcom/google/android/gms/internal/ads/zzcw;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzto;

    move-result-object v6

    iget v13, v6, Lcom/google/android/gms/internal/ads/zzto;->zze:I

    if-eq v13, v9, :cond_f

    .line 35
    iget v7, v11, Lcom/google/android/gms/internal/ads/zzto;->zze:I

    if-eq v7, v9, :cond_e

    if-lt v13, v7, :cond_e

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v7, 0x1

    .line 36
    :goto_d
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 37
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    .line 38
    :goto_e
    invoke-virtual {v12, v3, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v3

    if-nez v19, :cond_13

    cmp-long v8, v23, v1

    if-nez v8, :cond_13

    .line 39
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 40
    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_f

    .line 41
    :cond_11
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v8

    if-eqz v8, :cond_12

    iget v8, v11, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzct;->zzn(I)Z

    :cond_12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    .line 42
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzct;->zzn(I)Z

    :cond_13
    :goto_f
    const/4 v3, 0x1

    if-eq v3, v7, :cond_14

    goto :goto_10

    :cond_14
    move-object v6, v11

    .line 43
    :goto_10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 44
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 45
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    goto :goto_11

    .line 46
    :cond_15
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    .line 47
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzto;->zzc:I

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzct;->zze(I)I

    move-result v4

    if-ne v0, v4, :cond_16

    .line 48
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzct;->zzj()J

    :cond_16
    const-wide/16 v4, 0x0

    :cond_17
    :goto_11
    move-object/from16 v11, p0

    move-wide/from16 v19, v1

    move-wide v13, v4

    move v2, v10

    move v3, v15

    move/from16 v7, v22

    const/4 v15, 0x1

    move-object v10, v6

    .line 1
    :goto_12
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 49
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    .line 50
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v4, v13, v0

    if-eqz v4, :cond_18

    goto :goto_13

    :cond_18
    const/16 v21, 0x0

    goto :goto_14

    :cond_19
    :goto_13
    const/16 v21, 0x1

    :goto_14
    const/16 v22, 0x3

    if-eqz v3, :cond_1b

    :try_start_0
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 51
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eq v0, v15, :cond_1a

    const/4 v5, 0x4

    .line 52
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    goto :goto_15

    :cond_1a
    const/4 v5, 0x4

    :goto_15
    const/4 v6, 0x0

    .line 53
    invoke-direct {v11, v6, v6, v6, v15}, Lcom/google/android/gms/internal/ads/zzkh;->zzM(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x4

    :goto_16
    const/4 v15, 0x0

    goto/16 :goto_1f

    :cond_1b
    const/4 v5, 0x4

    const/4 v6, 0x0

    :goto_17
    if-nez v21, :cond_21

    :try_start_1
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    const-wide/high16 v23, -0x8000000000000000L

    if-nez v0, :cond_1c

    const-wide/16 v5, 0x0

    goto :goto_1a

    .line 81
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v25

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v5, v25

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    :goto_18
    :try_start_2
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 55
    array-length v9, v8

    const/4 v9, 0x2

    if-ge v2, v9, :cond_20

    .line 56
    aget-object v8, v8, v2

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    aget-object v8, v8, v2

    .line 57
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v9, v9, v2

    if-eq v8, v9, :cond_1d

    goto :goto_19

    :cond_1d
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 58
    aget-object v8, v8, v2

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzli;->zzf()J

    move-result-wide v8

    cmp-long v25, v8, v23

    if-nez v25, :cond_1e

    move-wide/from16 v5, v23

    goto :goto_1a

    .line 59
    :cond_1e
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1f
    :goto_19
    add-int/lit8 v2, v2, 0x1

    const/4 v9, -0x1

    goto :goto_18

    :cond_20
    :goto_1a
    move-object/from16 v2, p1

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 60
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzkp;->zzo(Lcom/google/android/gms/internal/ads/zzcw;JJ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 61
    invoke-direct {v11, v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzR(Z)V

    goto :goto_1c

    :catchall_1
    move-exception v0

    const/4 v9, 0x4

    const/4 v8, 0x0

    goto :goto_16

    :cond_21
    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    :goto_1b
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 64
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 65
    invoke-virtual {v1, v12, v3}, Lcom/google/android/gms/internal/ads/zzkp;->zzg(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzkn;)Lcom/google/android/gms/internal/ads/zzkn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzq()V

    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    goto :goto_1b

    .line 67
    :cond_23
    invoke-direct {v11, v10, v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzv(Lcom/google/android/gms/internal/ads/zzto;JZ)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide v13, v0

    .line 61
    :cond_24
    :goto_1c
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 68
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    if-eq v15, v7, :cond_25

    move-wide/from16 v6, v16

    goto :goto_1d

    :cond_25
    move-wide v6, v13

    :goto_1d
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    const/4 v15, 0x0

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzab(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JZ)V

    if-nez v21, :cond_26

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 69
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    cmp-long v2, v19, v0

    if-eqz v2, :cond_29

    :cond_26
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 70
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 71
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    if-eqz v21, :cond_27

    if-eqz p2, :cond_27

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzct;->zzg:Z

    if-nez v0, :cond_27

    const/16 v18, 0x1

    goto :goto_1e

    :cond_27
    const/16 v18, 0x0

    :goto_1e
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 74
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    .line 75
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    const/16 v22, 0x4

    :cond_28
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide/from16 v5, v19

    move/from16 v9, v18

    move/from16 v10, v22

    .line 76
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 77
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzN()V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 78
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v11, v12, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzP(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzcw;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 79
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzlc;->zzh(Lcom/google/android/gms/internal/ads/zzcw;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzkg;

    :cond_2a
    const/4 v8, 0x0

    .line 81
    invoke-direct {v11, v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    return-void

    :catchall_2
    move-exception v0

    goto/16 :goto_16

    .line 7
    :goto_1f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 68
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    const/4 v6, 0x1

    if-eq v6, v7, :cond_2b

    goto :goto_20

    :cond_2b
    move-wide/from16 v16, v13

    :goto_20
    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    const/16 v23, 0x1

    move-wide/from16 v6, v16

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzab(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JZ)V

    if-nez v21, :cond_2c

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 69
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    cmp-long v3, v19, v1

    if-eqz v3, :cond_2f

    :cond_2c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 70
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 71
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    if-eqz v21, :cond_2d

    if-eqz p2, :cond_2d

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzct;->zzg:Z

    if-nez v1, :cond_2d

    goto :goto_21

    :cond_2d
    const/16 v23, 0x0

    :goto_21
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 74
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    .line 75
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    const/16 v22, 0x4

    :cond_2e
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide/from16 v5, v19

    move/from16 v9, v23

    move/from16 v10, v22

    .line 76
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 77
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzN()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 78
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v11, v12, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzP(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzcw;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 79
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzlc;->zzh(Lcom/google/android/gms/internal/ads/zzcw;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v1

    if-nez v1, :cond_30

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzkg;

    :cond_30
    const/4 v1, 0x0

    .line 81
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    .line 82
    goto :goto_23

    :goto_22
    throw v0

    :goto_23
    goto :goto_22
.end method

.method private final zzG(Lcom/google/android/gms/internal/ads/zzch;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzkh;->zzH(Lcom/google/android/gms/internal/ads/zzch;FZZ)V

    return-void
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzch;FZZ)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    :cond_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzlc;

    move-object v1, v13

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    iget-wide v6, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzih;

    iget-boolean v10, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzg:Z

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzh:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzi:Lcom/google/android/gms/internal/ads/zzxh;

    move-object/from16 p3, v13

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzj:Ljava/util/List;

    move-object/from16 v0, p3

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzlc;->zzk:Lcom/google/android/gms/internal/ads/zzto;

    move-object/from16 p4, v1

    move-object v1, v14

    move-object v14, v0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzl:Z

    move v15, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzm:I

    move/from16 v16, v0

    move-object v0, v2

    move-object/from16 v27, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzp:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzq:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzs:J

    move-wide/from16 v24, v2

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzo:Z

    move/from16 v26, v1

    move-object/from16 v17, p1

    move-object/from16 v1, p4

    move-object v2, v0

    move-object/from16 v3, v27

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JJILcom/google/android/gms/internal/ads/zzih;ZLcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzto;ZILcom/google/android/gms/internal/ads/zzch;JJJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_1
    move-object/from16 v1, p1

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v4

    .line 4
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 5
    array-length v4, v2

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    .line 6
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    move/from16 v6, p2

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzli;->zzG(FF)V

    goto :goto_3

    :cond_4
    move/from16 v6, p2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final zzI()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzd()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzu(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v4

    if-ne v0, v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v6

    goto :goto_0

    .line 12
    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    :goto_0
    sub-long/2addr v4, v6

    move-wide v10, v4

    .line 5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    move-wide v5, v10

    move-wide v7, v2

    .line 8
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzkk;->zzg(JJF)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/32 v4, 0x7a120

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    .line 10
    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zztm;->zzj(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    move-wide v5, v10

    move-wide v7, v2

    .line 12
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzkk;->zzg(JJF)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzk(J)V

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzY()V

    return-void
.end method

.method private final zzJ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzkf;->zzc(Lcom/google/android/gms/internal/ads/zzlc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkf;->zze(Lcom/google/android/gms/internal/ads/zzkf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzN:Lcom/google/android/gms/internal/ads/zzjc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjc;->zza:Lcom/google/android/gms/internal/ads/zzjx;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjx;->zzU(Lcom/google/android/gms/internal/ads/zzkf;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(Lcom/google/android/gms/internal/ads/zzlc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    :cond_0
    return-void
.end method

.method private final zzK()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_c

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 4
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzkm;->zzj(FLcom/google/android/gms/internal/ads/zzcw;)Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    .line 5
    array-length v5, v5

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    array-length v6, v6

    if-eq v5, v6, :cond_1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    .line 29
    :goto_1
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    .line 6
    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 7
    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/ads/zzxh;->zza(Lcom/google/android/gms/internal/ads/zzxh;I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    :goto_2
    and-int/2addr v3, v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_3
    const/4 v8, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_a

    .line 5
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v7

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzkp;->zzm(Lcom/google/android/gms/internal/ads/zzkm;)Z

    move-result v16

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 10
    array-length v0, v0

    new-array v4, v6, [Z

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 11
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    move-object v12, v7

    move-object/from16 v17, v4

    .line 12
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzkm;->zzb(Lcom/google/android/gms/internal/ads/zzxh;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 13
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eq v1, v8, :cond_5

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    move-object/from16 v16, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v18, v2

    move-wide v2, v12

    move-object/from16 v20, v4

    move-wide/from16 v4, v18

    move-object/from16 v15, v16

    const/4 v11, 0x2

    move v8, v14

    move/from16 v9, v17

    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    if-eqz v14, :cond_6

    .line 16
    invoke-direct {v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzO(J)V

    :cond_6
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 17
    array-length v0, v0

    new-array v0, v11, [Z

    const/4 v9, 0x0

    :goto_5
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 18
    array-length v2, v1

    if-ge v9, v11, :cond_9

    .line 19
    aget-object v1, v1, v9

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v2

    aput-boolean v2, v0, v9

    .line 21
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v3, v3, v9

    if-eqz v2, :cond_8

    .line 22
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v2

    if-eq v3, v2, :cond_7

    .line 23
    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzA(Lcom/google/android/gms/internal/ads/zzli;)V

    goto :goto_6

    :cond_7
    aget-boolean v2, v20, v9

    if-eqz v2, :cond_8

    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 24
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzli;->zzD(J)V

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 25
    :cond_9
    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzC([Z)V

    goto :goto_7

    :cond_a
    const/4 v11, 0x2

    .line 34
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzm(Lcom/google/android/gms/internal/ads/zzkm;)Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 27
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    iget-wide v4, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 28
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {v1, v13, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzkm;->zza(Lcom/google/android/gms/internal/ads/zzxh;JZ)J

    :cond_b
    :goto_7
    const/4 v0, 0x1

    .line 30
    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 31
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzI()V

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaa()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 34
    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    :cond_c
    :goto_8
    return-void
.end method

.method private final zzL()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzK()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzR(Z)V

    return-void
.end method

.method private final zzM(ZZZZ)V
    .locals 31

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzf(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzL:Lcom/google/android/gms/internal/ads/zzih;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzi()V

    const-wide v5, 0xe8d4a51000L

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 3
    array-length v0, v5

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v2, :cond_0

    aget-object v0, v5, v6

    .line 4
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzA(Lcom/google/android/gms/internal/ads/zzli;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 5
    invoke-static {v7, v8, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 6
    array-length v0, v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_2

    aget-object v0, v5, v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Ljava/util/Set;

    .line 7
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzli;->zzC()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 9
    invoke-static {v7, v0, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 8
    :cond_2
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    .line 11
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzct;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 22
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 14
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    goto :goto_6

    .line 12
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 13
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    :goto_6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_6

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 16
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx(Lcom/google/android/gms/internal/ads/zzcw;)Landroid/util/Pair;

    move-result-object v0

    .line 17
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzto;

    .line 18
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_8

    :cond_5
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_7

    :cond_6
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v7

    :goto_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzi()V

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 21
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eqz p4, :cond_7

    goto :goto_9

    .line 22
    :cond_7
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzih;

    :goto_9
    move-object v13, v3

    if-eqz v0, :cond_8

    .line 23
    sget-object v3, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzvn;

    goto :goto_a

    :cond_8
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzh:Lcom/google/android/gms/internal/ads/zzvn;

    :goto_a
    move-object v15, v3

    if-eqz v0, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzxh;

    goto :goto_b

    .line 25
    :cond_9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 24
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zzi:Lcom/google/android/gms/internal/ads/zzxh;

    :goto_b
    move-object/from16 v16, v3

    if-eqz v0, :cond_a

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsc;->zzl()Lcom/google/android/gms/internal/ads/zzfsc;

    move-result-object v0

    goto :goto_c

    .line 26
    :cond_a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzj:Ljava/util/List;

    :goto_c
    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 v14, 0x0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzl:Z

    move/from16 v19, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzm:I

    move/from16 v20, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object v5, v2

    move-object/from16 v7, v18

    move-wide/from16 v10, v26

    move-wide/from16 v22, v26

    invoke-direct/range {v5 .. v30}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JJILcom/google/android/gms/internal/ads/zzih;ZLcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzto;ZILcom/google/android/gms/internal/ads/zzch;JJJJZ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    if-eqz p3, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlb;->zzg()V

    :cond_b
    return-void
.end method

.method private final zzN()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzkn;->zzh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    return-void
.end method

.method private final zzO(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v0

    :goto_0
    add-long/2addr p1, v0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzif;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 3
    array-length p2, p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzli;->zzD(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final zzP(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzcw;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 2
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzke;

    .line 4
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzke;->zzb:Ljava/lang/Object;

    .line 5
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzlf;

    .line 6
    sget p2, Lcom/google/android/gms/internal/ads/zzfj;->zza:I

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzlf;

    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private final zzQ(JJ)V
    .locals 0

    add-long/2addr p1, p3

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 p4, 0x2

    invoke-interface {p3, p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzei;->zzj(IJ)Z

    return-void
.end method

.method private final zzR(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 2
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzkh;->zzw(Lcom/google/android/gms/internal/ads/zzto;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 4
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 5
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_0
    return-void
.end method

.method private final zzS(Lcom/google/android/gms/internal/ads/zzch;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzif;->zzg(Lcom/google/android/gms/internal/ads/zzch;)V

    return-void
.end method

.method private final zzT(ZIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 2
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzkf;->zzb(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzlc;->zze(ZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_0

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzX()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaa()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 9
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzV()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 11
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    return-void

    :cond_3
    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 12
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    :cond_4
    return-void
.end method

.method private final zzU(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzM:J

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlc;->zzg(I)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_1
    return-void
.end method

.method private final zzV()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzif;->zzh()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 2
    array-length v2, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzli;->zzH()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzW(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzD:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzM(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkk;->zzd()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    return-void
.end method

.method private final zzX()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 2
    array-length v1, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzal(Lcom/google/android/gms/internal/ads/zzli;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzY()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zztm;->zzp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 3
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzg:Z

    if-eq v14, v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlc;

    move-object v5, v2

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzih;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzh:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzi:Lcom/google/android/gms/internal/ads/zzxh;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzj:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzk:Lcom/google/android/gms/internal/ads/zzto;

    move-object/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzl:Z

    move/from16 v19, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzm:I

    move/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    move-object/from16 v21, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzp:J

    move-wide/from16 v22, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzq:J

    move-wide/from16 v24, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    move-wide/from16 v26, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzs:J

    move-wide/from16 v28, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzo:Z

    move/from16 v30, v1

    invoke-direct/range {v5 .. v30}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JJILcom/google/android/gms/internal/ads/zzih;ZLcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzto;ZILcom/google/android/gms/internal/ads/zzch;JJJJZ)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_2
    return-void
.end method

.method private final zzZ(Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    iget-object v5, p3, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    move-object v2, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzkk;->zze(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzbw;[Lcom/google/android/gms/internal/ads/zzli;Lcom/google/android/gms/internal/ads/zzvn;[Lcom/google/android/gms/internal/ads/zzxa;)V

    return-void
.end method

.method private final zzaa()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zztm;->zzd()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzO(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 4
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    goto/16 :goto_4

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 8
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 9
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Z

    if-eqz v0, :cond_5

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 11
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 12
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzJ:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_7

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 14
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzke;

    :goto_2
    if-eqz v7, :cond_8

    if-ltz v0, :cond_6

    if-nez v0, :cond_8

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_8

    :cond_6
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_7

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 15
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzke;

    goto :goto_2

    :cond_7
    move-object v7, v6

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzke;

    :cond_9
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzJ:I

    .line 10
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzs:J

    .line 6
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzc()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 22
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzl:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    .line 24
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzs(Lcom/google/android/gms/internal/ads/zzcw;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzt()J

    move-result-wide v4

    .line 26
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzic;->zza(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzch;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzch;->zzd:F

    .line 29
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzch;-><init>(FF)V

    .line 28
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzch;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    .line 30
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzH(Lcom/google/android/gms/internal/ads/zzch;FZZ)V

    :cond_c
    return-void
.end method

.method private final zzab(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkh;->zzai(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzch;->zza:Lcom/google/android/gms/internal/ads/zzch;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzch;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzch;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzkh;->zzH(Lcom/google/android/gms/internal/ads/zzch;FZZ)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    const-wide/16 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zze(ILcom/google/android/gms/internal/ads/zzcv;J)Lcom/google/android/gms/internal/ads/zzcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcv;->zzk:Lcom/google/android/gms/internal/ads/zzbf;

    sget v4, Lcom/google/android/gms/internal/ads/zzfj;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzic;->zzd(Lcom/google/android/gms/internal/ads/zzbf;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzkh;->zzs(Lcom/google/android/gms/internal/ads/zzcw;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 9
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzic;->zze(J)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcv;->zzc:Ljava/lang/Object;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result p2

    if-nez p2, :cond_4

    .line 13
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 14
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zze(ILcom/google/android/gms/internal/ads/zzcv;J)Lcom/google/android/gms/internal/ads/zzcv;

    move-result-object p2

    .line 15
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcv;->zzc:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 16
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzC(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p7, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzic;->zze(J)V

    return-void
.end method

.method private final declared-synchronized zzac(Lcom/google/android/gms/internal/ads/zzfpx;J)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzjy;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzjy;->zza:Lcom/google/android/gms/internal/ads/zzkh;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Z

    .line 2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    const/4 v2, 0x1

    .line 5
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final zzad()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzd()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static zzae(Lcom/google/android/gms/internal/ads/zzli;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzbc()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzaf()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method

.method private static zzag(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzct;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzct;->zzg:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzah()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzl:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzai(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zze(ILcom/google/android/gms/internal/ads/zzcv;J)Lcom/google/android/gms/internal/ads/zzcv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcv;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzcv;->zzi:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzcv;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private static zzaj(Lcom/google/android/gms/internal/ads/zzxa;)[Lcom/google/android/gms/internal/ads/zzam;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxa;->zzc()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzam;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzxa;->zzd(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static final zzak(Lcom/google/android/gms/internal/ads/zzlf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzj()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzc()Lcom/google/android/gms/internal/ads/zzle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zza()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlf;->zzg()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzle;->zzq(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzlf;->zzh(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzlf;->zzh(Z)V

    .line 4
    throw v1
.end method

.method private static final zzal(Lcom/google/android/gms/internal/ads/zzli;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzbc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzI()V

    :cond_0
    return-void
.end method

.method private static final zzam(Lcom/google/android/gms/internal/ads/zzli;J)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzli;->zzE()V

    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzvr;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzvr;

    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzkh;)Lcom/google/android/gms/internal/ads/zzei;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    return-object p0
.end method

.method static zze(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzcw;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcw;->zzb()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcw;->zzi(ILcom/google/android/gms/internal/ads/zzct;Lcom/google/android/gms/internal/ads/zzcv;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 p4, -0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzkh;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzE:Z

    return-void
.end method

.method static final synthetic zzr(Lcom/google/android/gms/internal/ads/zzlf;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzak(Lcom/google/android/gms/internal/ads/zzlf;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 2
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzer;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzcw;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zze(ILcom/google/android/gms/internal/ads/zzcv;J)Lcom/google/android/gms/internal/ads/zzcv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzcv;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcv;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzcv;->zzi:Z

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzcv;->zzg:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    .line 6
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcv;->zzf:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzo(J)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1

    :cond_2
    :goto_1
    return-wide v2
.end method

.method private final zzt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzlc;->zzp:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzu(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzu(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzto;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzkh;->zzw(Lcom/google/android/gms/internal/ads/zzto;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzto;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzih;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzX()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 2
    iget p5, p5, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide p4

    add-long/2addr p4, p2

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 6
    array-length p4, p1

    const/4 p4, 0x0

    :goto_2
    if-ge p4, v1, :cond_5

    aget-object p5, p1, p4

    .line 7
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzkh;->zzA(Lcom/google/android/gms/internal/ads/zzli;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkp;->zza()Lcom/google/android/gms/internal/ads/zzkm;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzm(Lcom/google/android/gms/internal/ads/zzkm;)Z

    const-wide p4, 0xe8d4a51000L

    .line 11
    invoke-virtual {v2, p4, p5}, Lcom/google/android/gms/internal/ads/zzkm;->zzp(J)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzB()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 13
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzm(Lcom/google/android/gms/internal/ads/zzkm;)Z

    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 14
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkn;->zzb(J)Lcom/google/android/gms/internal/ads/zzkn;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    goto :goto_4

    .line 22
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zze:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    .line 15
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztm;->zze(J)J

    move-result-wide p2

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:J

    sub-long p4, p2, p4

    .line 16
    invoke-interface {p1, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zztm;->zzj(JZ)V

    .line 17
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzkh;->zzO(J)V

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzI()V

    goto :goto_5

    .line 16
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzi()V

    .line 20
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzkh;->zzO(J)V

    .line 21
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 22
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    return-wide p2
.end method

.method private final zzx(Lcom/google/android/gms/internal/ads/zzcw;)Landroid/util/Pair;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzlc;->zzj()Lcom/google/android/gms/internal/ads/zzto;

    move-result-object p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzC:Z

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzg(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 5
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzh(Lcom/google/android/gms/internal/ads/zzcw;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzto;

    move-result-object v3

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    .line 8
    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    iget p1, v3, Lcom/google/android/gms/internal/ads/zzto;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzct;->zze(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzct;->zzj()J

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 11
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static zzy(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzkg;ZIZLcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;)Landroid/util/Pair;
    .locals 12

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkg;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzkg;->zzb:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzkg;->zzc:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzcw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzct;->zzg:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11, v3, v4}, Lcom/google/android/gms/internal/ads/zzcw;->zze(ILcom/google/android/gms/internal/ads/zzcv;J)Lcom/google/android/gms/internal/ads/zzcv;

    move-result-object v2

    .line 10
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcv;->zzo:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 12
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    .line 13
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzkg;->zzc:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    .line 15
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzcw;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzct;->zzd:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcw;->zzl(Lcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private final zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Z

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v1, p2, v7

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzN()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzh:Lcom/google/android/gms/internal/ads/zzvn;

    .line 5
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzi:Lcom/google/android/gms/internal/ads/zzxh;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzj:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzlb;->zzi()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    sget-object v7, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzvn;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzh()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v7

    :goto_2
    if-nez v1, :cond_3

    .line 9
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzxh;

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v8

    .line 10
    :goto_3
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfrz;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzfrz;-><init>()V

    .line 11
    array-length v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v14, v9, v12

    if-eqz v14, :cond_5

    .line 12
    invoke-interface {v14, v3}, Lcom/google/android/gms/internal/ads/zzxa;->zzd(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v14

    .line 13
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzam;->zzk:Lcom/google/android/gms/internal/ads/zzbz;

    if-nez v14, :cond_4

    new-instance v14, Lcom/google/android/gms/internal/ads/zzbz;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    new-array v15, v3, [Lcom/google/android/gms/internal/ads/zzby;

    invoke-direct {v14, v4, v5, v15}, Lcom/google/android/gms/internal/ads/zzbz;-><init>(J[Lcom/google/android/gms/internal/ads/zzby;)V

    .line 14
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfrz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfrz;

    goto :goto_5

    .line 15
    :cond_4
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfrz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfrz;

    const/4 v13, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v5, p4

    goto :goto_4

    :cond_6
    if-eqz v13, :cond_7

    .line 16
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfrz;->zzi()Lcom/google/android/gms/internal/ads/zzfsc;

    move-result-object v3

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsc;->zzl()Lcom/google/android/gms/internal/ads/zzfsc;

    move-result-object v3

    :goto_6
    if-eqz v1, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 17
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzkn;->zzc:J

    move-wide/from16 v9, p4

    cmp-long v11, v5, v9

    if-eqz v11, :cond_9

    .line 18
    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzkn;->zza(J)Lcom/google/android/gms/internal/ads/zzkn;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    goto :goto_7

    :cond_8
    move-wide/from16 v9, p4

    :cond_9
    :goto_7
    move-object v13, v3

    goto :goto_8

    :cond_a
    move-wide v9, v5

    .line 16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 19
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/ads/zzvn;->zza:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzxh;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsc;->zzl()Lcom/google/android/gms/internal/ads/zzfsc;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_9

    :cond_b
    move-object v13, v1

    :goto_8
    move-object v11, v7

    move-object v12, v8

    :goto_9
    if-eqz p8, :cond_c

    .line 18
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    move/from16 v3, p9

    .line 22
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzkf;->zzd(I)V

    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzt()J

    move-result-wide v14

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide v9, v14

    .line 24
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzlc;->zzd(Lcom/google/android/gms/internal/ads/zzto;JJJJLcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 55

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    .line 167
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzL()V

    goto/16 :goto_3e

    .line 166
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzL()V

    goto/16 :goto_3e

    .line 168
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v14, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzF:Z

    if-eq v1, v2, :cond_69

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzF:Z

    if-nez v1, :cond_69

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 169
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzo:Z

    if-eqz v1, :cond_69

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 170
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    goto/16 :goto_3e

    .line 171
    :pswitch_3
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Z

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzN()V

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    if-eqz v1, :cond_69

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eq v1, v2, :cond_69

    .line 174
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzR(Z)V

    .line 175
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    goto/16 :goto_3e

    .line 163
    :pswitch_4
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzb()Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v1

    .line 165
    invoke-direct {v11, v1, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V

    goto/16 :goto_3e

    .line 176
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvi;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 177
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 178
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzn(Lcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v1

    .line 179
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V

    goto/16 :goto_3e

    .line 180
    :pswitch_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvi;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 181
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 182
    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzl(IILcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v1

    .line 183
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V

    goto/16 :goto_3e

    .line 184
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkd;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 185
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 186
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzkd;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzkd;->zzb:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzkd;->zzc:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkd;->zzd:Lcom/google/android/gms/internal/ads/zzvi;

    .line 187
    invoke-virtual {v2, v13, v13, v13, v15}, Lcom/google/android/gms/internal/ads/zzlb;->zzk(IIILcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v1

    .line 188
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V

    goto/16 :goto_3e

    .line 189
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzkc;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 190
    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    if-ne v1, v10, :cond_2

    .line 191
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzlb;->zza()I

    move-result v1

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(Lcom/google/android/gms/internal/ads/zzkc;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkc;->zzd(Lcom/google/android/gms/internal/ads/zzkc;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v2

    .line 192
    invoke-virtual {v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzlb;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v1

    .line 193
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V

    goto/16 :goto_3e

    .line 194
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 195
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    .line 196
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkc;)I

    move-result v2

    if-eq v2, v10, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzkg;

    .line 197
    new-instance v3, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(Lcom/google/android/gms/internal/ads/zzkc;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzd(Lcom/google/android/gms/internal/ads/zzkc;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzvi;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkc;)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzb(Lcom/google/android/gms/internal/ads/zzkc;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzkg;-><init>(Lcom/google/android/gms/internal/ads/zzcw;IJ)V

    iput-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzkg;

    :cond_3
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    .line 198
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(Lcom/google/android/gms/internal/ads/zzkc;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzd(Lcom/google/android/gms/internal/ads/zzkc;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v1

    .line 199
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzm(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzvi;)Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v1

    .line 200
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzF(Lcom/google/android/gms/internal/ads/zzcw;Z)V

    goto/16 :goto_3e

    .line 201
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzch;

    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzG(Lcom/google/android/gms/internal/ads/zzch;Z)V

    goto/16 :goto_3e

    .line 202
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlf;

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlf;->zzb()Landroid/os/Looper;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v2, "TAG"

    const-string v3, "Trying to send message on a dead thread."

    .line 205
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzlf;->zzh(Z)V

    goto/16 :goto_3e

    :cond_4
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzp:Lcom/google/android/gms/internal/ads/zzdz;

    .line 207
    invoke-interface {v3, v2, v15}, Lcom/google/android/gms/internal/ads/zzdz;->zzb(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjz;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzjz;-><init>(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzlf;)V

    .line 208
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzh(Ljava/lang/Runnable;)Z

    goto/16 :goto_3e

    .line 209
    :pswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlf;

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlf;->zzb()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Landroid/os/Looper;

    if-ne v2, v3, :cond_6

    .line 211
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzak(Lcom/google/android/gms/internal/ads/zzlf;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 212
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eq v1, v8, :cond_5

    if-ne v1, v5, :cond_69

    :cond_5
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 213
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    goto/16 :goto_3e

    :cond_6
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v3, 0xf

    .line 214
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    goto/16 :goto_3e

    .line 215
    :pswitch_d
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzD:Z

    if-eq v3, v2, :cond_9

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzD:Z

    if-nez v2, :cond_9

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 216
    array-length v3, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_9

    aget-object v4, v2, v3

    .line 217
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 218
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzli;->zzC()V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_69

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzqm; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcd; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit p0

    goto/16 :goto_3e

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 222
    :pswitch_e
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzC:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 223
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzq(Lcom/google/android/gms/internal/ads/zzcw;Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 224
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzR(Z)V

    .line 225
    :cond_b
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    goto/16 :goto_3e

    .line 226
    :pswitch_f
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 227
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzp(Lcom/google/android/gms/internal/ads/zzcw;I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 228
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzR(Z)V

    .line 229
    :cond_c
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    goto/16 :goto_3e

    .line 230
    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzK()V

    goto/16 :goto_3e

    .line 231
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zztm;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 232
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzl(Lcom/google/android/gms/internal/ads/zztm;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 233
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkp;->zzk(J)V

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzI()V

    goto/16 :goto_3e

    .line 235
    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zztm;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 236
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzl(Lcom/google/android/gms/internal/ads/zztm;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 238
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 239
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkm;->zzl(FLcom/google/android/gms/internal/ads/zzcw;)V

    .line 240
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    .line 241
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzh()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v3

    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v4

    .line 240
    invoke-direct {v11, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzkh;->zzZ(Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-ne v1, v2, :cond_d

    .line 244
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzO(J)V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzB()V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 246
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    .line 247
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 248
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzI()V

    goto/16 :goto_3e

    .line 155
    :pswitch_13
    invoke-direct {v11, v14, v13, v14, v13}, Lcom/google/android/gms/internal/ads/zzkh;->zzM(ZZZZ)V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 156
    array-length v2, v2

    if-ge v1, v5, :cond_e

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzc:[Lcom/google/android/gms/internal/ads/zzlk;

    .line 157
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzlk;->zzn()V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 158
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzli;->zzA()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    .line 159
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkk;->zzc()V

    .line 160
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzi:Landroid/os/HandlerThread;

    if-eqz v1, :cond_f

    .line 161
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_f
    monitor-enter p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzqm; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcd; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-boolean v14, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Z

    .line 162
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit p0

    return v14

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 249
    :pswitch_14
    invoke-direct {v11, v13, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(ZZ)V

    goto/16 :goto_3e

    .line 250
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlm;

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzt:Lcom/google/android/gms/internal/ads/zzlm;

    goto/16 :goto_3e

    .line 251
    :pswitch_16
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzch;

    .line 252
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzch;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 253
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v1

    invoke-direct {v11, v1, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzG(Lcom/google/android/gms/internal/ads/zzch;Z)V

    goto/16 :goto_3e

    .line 254
    :pswitch_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    .line 255
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 256
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    const/16 v17, 0x1

    iget v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzC:Z

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzcv;

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    move-object/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v10

    .line 257
    invoke-static/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/zzkh;->zzy(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzkg;ZIZLcom/google/android/gms/internal/ads/zzcv;Lcom/google/android/gms/internal/ads/zzct;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_10

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 258
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 259
    invoke-direct {v11, v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzx(Lcom/google/android/gms/internal/ads/zzcw;)Landroid/util/Pair;

    move-result-object v10

    .line 260
    iget-object v15, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/ads/zzto;

    .line 261
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 262
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v10

    xor-int/2addr v10, v14

    move-wide v12, v6

    move v9, v10

    move-wide/from16 v3, v16

    goto :goto_8

    .line 263
    :cond_10
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 264
    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 265
    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzkg;->zzc:J

    cmp-long v15, v12, v6

    if-nez v15, :cond_11

    move-wide v12, v6

    goto :goto_6

    :cond_11
    move-wide v12, v3

    :goto_6
    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 266
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 267
    invoke-virtual {v15, v8, v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzkp;->zzh(Lcom/google/android/gms/internal/ads/zzcw;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzto;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 268
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/zzct;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    .line 269
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzct;->zze(I)I

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzto;->zzc:I

    if-ne v3, v4, :cond_12

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzct;

    .line 270
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzct;->zzj()J

    :cond_12
    move-object v15, v8

    const-wide/16 v3, 0x0

    const/4 v9, 0x1

    goto :goto_8

    .line 271
    :cond_13
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzkg;->zzc:J
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzqm; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcd; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    cmp-long v15, v9, v6

    if-nez v15, :cond_14

    const/4 v6, 0x1

    goto :goto_7

    :cond_14
    const/4 v6, 0x0

    :goto_7
    move v9, v6

    move-object v15, v8

    .line 262
    :goto_8
    :try_start_5
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 272
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v6, :cond_15

    :try_start_6
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzkg;

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v10, v15

    goto/16 :goto_10

    :cond_15
    if-nez v2, :cond_17

    .line 283
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 273
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eq v1, v14, :cond_16

    const/4 v1, 0x4

    .line 274
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    :cond_16
    const/4 v1, 0x0

    .line 275
    invoke-direct {v11, v1, v14, v1, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzM(ZZZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_9
    move-wide v7, v3

    move-object v10, v15

    goto/16 :goto_e

    :cond_17
    :try_start_7
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 276
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzbw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 277
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v1, :cond_18

    :try_start_8
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-eqz v2, :cond_18

    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    if-eqz v2, :cond_18

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzt:Lcom/google/android/gms/internal/ads/zzlm;

    .line 278
    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zztm;->zza(JLcom/google/android/gms/internal/ads/zzlm;)J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    :cond_18
    move-wide v1, v3

    .line 279
    :goto_a
    :try_start_9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v6

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object v10, v15

    :try_start_a
    iget-wide v14, v8, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v14

    cmp-long v8, v6, v14

    if-nez v8, :cond_1b

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-eq v7, v5, :cond_19

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1b

    .line 284
    :cond_19
    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v7

    move-wide v5, v12

    move v10, v14

    .line 283
    :try_start_b
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    :goto_b
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzqm; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcd; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3e

    :cond_1a
    move-object v10, v15

    move-wide v1, v3

    :cond_1b
    :try_start_c
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 280
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v14, 0x4

    if-ne v5, v14, :cond_1c

    const/4 v5, 0x1

    goto :goto_c

    :cond_1c
    const/4 v5, 0x0

    .line 281
    :goto_c
    invoke-direct {v11, v10, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzv(Lcom/google/android/gms/internal/ads/zzto;JZ)J

    move-result-wide v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v1, v3, v14

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_d

    :cond_1d
    const/4 v1, 0x0

    :goto_d
    or-int/2addr v9, v1

    :try_start_d
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 282
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v10

    move-wide v6, v12

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzab(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-wide v7, v14

    :goto_e
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v7

    move-wide v5, v12

    move v10, v14

    .line 283
    :try_start_e
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-wide v7, v14

    move-object v14, v1

    goto :goto_11

    :catchall_4
    move-exception v0

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v10, v15

    :goto_f
    move-object v1, v0

    :goto_10
    move-object v14, v1

    move-wide v7, v3

    :goto_11
    const/4 v15, 0x2

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v7

    move-wide v5, v12

    move v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 285
    throw v14

    :pswitch_18
    const/4 v14, 0x4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 3
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzei;->zzf(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlb;->zzi()Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_20

    .line 101
    :cond_1e
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkp;->zzk(J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzn()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzkp;->zzf(JLcom/google/android/gms/internal/ads/zzlc;)Lcom/google/android/gms/internal/ads/zzkn;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzc:[Lcom/google/android/gms/internal/ads/zzlk;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzd:Lcom/google/android/gms/internal/ads/zzxg;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    .line 8
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzkk;->zzi()Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v23

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzxh;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v1

    move-object/from16 v26, v6

    .line 9
    invoke-virtual/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzkp;->zzr([Lcom/google/android/gms/internal/ads/zzlk;Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzxp;Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzxh;)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    .line 10
    invoke-interface {v3, v11, v6, v7}, Lcom/google/android/gms/internal/ads/zztm;->zzl(Lcom/google/android/gms/internal/ads/zztl;J)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v3

    if-ne v3, v2, :cond_1f

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    .line 12
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzO(J)V

    :cond_1f
    const/4 v1, 0x0

    .line 13
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzE(Z)V

    :cond_20
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Z

    if-eqz v1, :cond_21

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad()Z

    move-result v1

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Z

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzY()V

    goto :goto_12

    .line 16
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzI()V

    .line 15
    :goto_12
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    if-nez v1, :cond_23

    :cond_22
    :goto_13
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1a

    .line 72
    :cond_23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    if-eqz v2, :cond_24

    goto/16 :goto_17

    .line 25
    :cond_24
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    .line 27
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    :goto_14
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 28
    array-length v6, v4

    if-ge v3, v5, :cond_26

    .line 29
    aget-object v4, v4, v3

    .line 30
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v6, v6, v3

    .line 31
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v7

    if-ne v7, v6, :cond_22

    if-eqz v6, :cond_25

    .line 32
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzli;->zzJ()Z

    move-result v4

    if-nez v4, :cond_25

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    .line 34
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzf:Z

    goto :goto_13

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    .line 35
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-nez v2, :cond_27

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzkm;->zzf()J

    move-result-wide v6

    cmp-long v4, v2, v6

    if-ltz v4, :cond_22

    :cond_27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v9

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzb()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v7

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 39
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move-object v2, v4

    const/4 v14, 0x2

    move-object/from16 v5, v22

    move-object v10, v6

    move-object/from16 v29, v7

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v6, v20

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzab(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JZ)V

    .line 40
    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-eqz v1, :cond_29

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    .line 41
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zztm;->zzd()J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-eqz v3, :cond_29

    .line 52
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzkm;->zzf()J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 53
    array-length v4, v3

    const/4 v4, 0x0

    :goto_15
    const/4 v5, 0x2

    if-ge v4, v5, :cond_30

    aget-object v5, v3, v4

    .line 54
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 55
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzam(Lcom/google/android/gms/internal/ads/zzli;J)V

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_29
    const/4 v1, 0x0

    :goto_16
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 42
    array-length v2, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_30

    .line 43
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzxh;->zzb(I)Z

    move-result v2

    move-object/from16 v3, v29

    .line 44
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzxh;->zzb(I)Z

    move-result v4

    if-eqz v2, :cond_2b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 45
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzli;->zzK()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzc:[Lcom/google/android/gms/internal/ads/zzlk;

    .line 46
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzlk;->zzb()I

    .line 47
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzxh;->zzb:[Lcom/google/android/gms/internal/ads/zzll;

    aget-object v2, v2, v1

    .line 48
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzxh;->zzb:[Lcom/google/android/gms/internal/ads/zzll;

    aget-object v5, v5, v1

    if-eqz v4, :cond_2a

    .line 49
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzll;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_2a
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 50
    aget-object v2, v2, v1

    .line 51
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzkm;->zzf()J

    move-result-wide v4

    .line 50
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzam(Lcom/google/android/gms/internal/ads/zzli;J)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v29, v3

    goto :goto_16

    :cond_2c
    :goto_17
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 18
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzkn;->zzi:Z

    if-nez v2, :cond_2d

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    if-eqz v2, :cond_30

    :cond_2d
    const/4 v2, 0x0

    :goto_18
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 19
    array-length v4, v3

    const/4 v4, 0x2

    if-ge v2, v4, :cond_30

    .line 20
    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    .line 21
    aget-object v4, v4, v2

    if-eqz v4, :cond_2f

    .line 22
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v5

    if-ne v5, v4, :cond_2f

    .line 23
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzli;->zzJ()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 24
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    cmp-long v6, v4, v14

    if-eqz v6, :cond_2e

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v6

    add-long/2addr v6, v4

    goto :goto_19

    :cond_2e
    move-wide v6, v14

    .line 25
    :goto_19
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzam(Lcom/google/android/gms/internal/ads/zzli;J)V

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 17
    :cond_30
    :goto_1a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eq v2, v1, :cond_37

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzg:Z

    if-eqz v1, :cond_31

    goto :goto_1d

    .line 83
    :cond_31
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 60
    array-length v6, v5

    const/4 v6, 0x2

    if-ge v3, v6, :cond_36

    .line 61
    aget-object v5, v5, v3

    .line 62
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 63
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v7, v7, v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzxh;->zzb(I)Z

    move-result v8

    if-eqz v8, :cond_32

    if-eq v6, v7, :cond_35

    .line 65
    :cond_32
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzli;->zzK()Z

    move-result v6

    if-nez v6, :cond_33

    .line 66
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzkh;->zzaj(Lcom/google/android/gms/internal/ads/zzxa;)[Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v32

    .line 67
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v33, v6, v3

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zzf()J

    move-result-wide v34

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkm;->zze()J

    move-result-wide v36

    move-object/from16 v31, v5

    .line 67
    invoke-interface/range {v31 .. v37}, Lcom/google/android/gms/internal/ads/zzli;->zzB([Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzvf;JJ)V

    goto :goto_1c

    .line 70
    :cond_33
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzli;->zzP()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 71
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzA(Lcom/google/android/gms/internal/ads/zzli;)V

    goto :goto_1c

    :cond_34
    const/4 v4, 0x1

    :cond_35
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_36
    if-nez v4, :cond_37

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzB()V

    :cond_37
    :goto_1d
    const/4 v1, 0x0

    .line 73
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    if-nez v2, :cond_3b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkm;->zzf()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3b

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzg:Z

    if-eqz v2, :cond_3b

    if-eqz v1, :cond_38

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzJ()V

    :cond_38
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zza()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzqm; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcd; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_e .. :try_end_e} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 148
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :try_start_f
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 78
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/Object;

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_3a

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzto;->zzb:I

    if-ne v4, v10, :cond_3a

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzto;->zze:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzto;->zze:I

    if-eq v2, v3, :cond_3a

    const/4 v2, 0x1

    goto :goto_1f

    :cond_39
    const/4 v10, -0x1

    :cond_3a
    const/4 v2, 0x0

    :goto_1f
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 80
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzc:J

    const/4 v1, 0x1

    xor-int/lit8 v9, v2, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    const/4 v14, 0x4

    const/4 v15, -0x1

    move/from16 v10, v17

    .line 81
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzN()V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaa()V

    const/4 v1, 0x1

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1e

    :cond_3b
    const/4 v14, 0x4

    .line 4
    :cond_3c
    :goto_20
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 84
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_70

    if-ne v1, v14, :cond_3d

    goto/16 :goto_3e

    .line 314
    :cond_3d
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_3e

    .line 86
    invoke-direct {v11, v12, v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzQ(JJ)V

    goto/16 :goto_3e

    :cond_3e
    const-string v4, "doSomeWork"

    .line 87
    sget v5, Lcom/google/android/gms/internal/ads/zzfj;->zza:I

    .line 88
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaa()V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_46

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long v7, v7, v5

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 91
    iget-wide v9, v9, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzm:J

    sub-long/2addr v9, v2

    const/4 v2, 0x0

    invoke-interface {v4, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zztm;->zzj(JZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_21
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 92
    array-length v10, v9

    const/4 v10, 0x2

    if-ge v4, v10, :cond_47

    .line 93
    aget-object v9, v9, v4

    .line 94
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v10

    if-eqz v10, :cond_45

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzI:J

    .line 95
    invoke-interface {v9, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzli;->zzO(JJ)V

    if-eqz v2, :cond_3f

    .line 96
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzli;->zzP()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_22

    :cond_3f
    const/4 v2, 0x0

    :goto_22
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v5, v5, v4

    .line 97
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v6

    if-eq v5, v6, :cond_40

    const/4 v5, 0x1

    goto :goto_23

    :cond_40
    const/4 v5, 0x0

    :goto_23
    if-nez v5, :cond_41

    .line 98
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzli;->zzJ()Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_24

    :cond_41
    const/4 v6, 0x0

    :goto_24
    if-nez v5, :cond_43

    if-nez v6, :cond_43

    .line 99
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzli;->zzQ()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzli;->zzP()Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_25

    :cond_42
    const/4 v5, 0x0

    goto :goto_26

    :cond_43
    :goto_25
    const/4 v5, 0x1

    :goto_26
    if-eqz v3, :cond_44

    if-eqz v5, :cond_44

    const/4 v3, 0x1

    goto :goto_27

    :cond_44
    const/4 v3, 0x0

    :goto_27
    if-nez v5, :cond_45

    .line 100
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzli;->zzs()V

    :cond_45
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x3e8

    goto :goto_21

    .line 118
    :cond_46
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zza:Lcom/google/android/gms/internal/ads/zztm;

    .line 101
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztm;->zzk()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 100
    :cond_47
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 102
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzkn;->zze:J

    if-eqz v2, :cond_4a

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-eqz v2, :cond_4a

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_48

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 103
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4a

    :cond_48
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Z

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 104
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzm:I

    const/4 v5, 0x5

    invoke-direct {v11, v2, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzT(ZIZI)V

    :cond_49
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 105
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzkn;->zzi:Z

    if-eqz v2, :cond_4a

    .line 130
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzX()V

    const/4 v2, 0x3

    goto/16 :goto_31

    .line 140
    :cond_4a
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 106
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4c

    :cond_4b
    const/4 v2, 0x3

    goto/16 :goto_2d

    .line 126
    :cond_4c
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    if-nez v4, :cond_4e

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaf()Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_4d
    :goto_28
    const/4 v2, 0x3

    goto/16 :goto_2c

    :cond_4e
    if-eqz v3, :cond_4b

    .line 108
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzlc;->zzg:Z

    if-eqz v2, :cond_4d

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 110
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-direct {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzkh;->zzai(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzic;->zzb()J

    move-result-wide v6

    move-wide/from16 v38, v6

    goto :goto_29

    :cond_4f
    const-wide v38, -0x7fffffffffffffffL    # -4.9E-324

    :goto_29
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzkp;->zzc()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzkm;->zzr()Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzkn;->zzi:Z

    if-eqz v5, :cond_50

    const/4 v5, 0x1

    goto :goto_2a

    :cond_50
    const/4 v5, 0x0

    .line 114
    :goto_2a
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbw;->zzb()Z

    move-result v6

    if-eqz v6, :cond_51

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzkm;->zzd:Z

    if-nez v4, :cond_51

    const/4 v4, 0x1

    goto :goto_2b

    :cond_51
    const/4 v4, 0x0

    :goto_2b
    if-nez v5, :cond_4d

    if-nez v4, :cond_4d

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 115
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzt()J

    move-result-wide v34

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Lcom/google/android/gms/internal/ads/zzif;

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzif;->zzc()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzch;->zzc:F

    iget-boolean v7, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v2

    move/from16 v36, v6

    move/from16 v37, v7

    .line 118
    invoke-interface/range {v31 .. v39}, Lcom/google/android/gms/internal/ads/zzkk;->zzh(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzbw;JFZJ)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_28

    .line 127
    :goto_2c
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    const/4 v3, 0x0

    iput-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzL:Lcom/google/android/gms/internal/ads/zzih;

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzV()V

    goto :goto_31

    .line 106
    :goto_2d
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 119
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-ne v4, v2, :cond_56

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    if-nez v4, :cond_52

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaf()Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_2e

    :cond_52
    if-nez v3, :cond_56

    .line 121
    :goto_2e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result v3

    iput-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    const/4 v3, 0x2

    .line 122
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzz:Z

    if-eqz v3, :cond_55

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v3

    :goto_2f
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzkm;->zzi()Lcom/google/android/gms/internal/ads/zzxh;

    move-result-object v4

    .line 124
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzxh;->zzc:[Lcom/google/android/gms/internal/ads/zzxa;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v5, :cond_53

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzkm;->zzg()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v3

    goto :goto_2f

    :cond_54
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzO:Lcom/google/android/gms/internal/ads/zzic;

    .line 125
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzic;->zzc()V

    .line 126
    :cond_55
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzX()V

    .line 131
    :cond_56
    :goto_31
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 132
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5b

    const/4 v3, 0x0

    :goto_32
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 133
    array-length v6, v5

    if-ge v3, v4, :cond_58

    .line 134
    aget-object v4, v5, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Lcom/google/android/gms/internal/ads/zzli;)Z

    move-result v4

    if-eqz v4, :cond_57

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    aget-object v4, v4, v3

    .line 135
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzli;->zzm()Lcom/google/android/gms/internal/ads/zzvf;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzc:[Lcom/google/android/gms/internal/ads/zzvf;

    aget-object v5, v5, v3

    if-ne v4, v5, :cond_57

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zza:[Lcom/google/android/gms/internal/ads/zzli;

    .line 136
    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzli;->zzs()V

    :cond_57
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    goto :goto_32

    :cond_58
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 137
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzg:Z

    if-nez v3, :cond_5b

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzlc;->zzq:J

    const-wide/32 v5, 0x7a120

    cmp-long v1, v3, v5

    if-gez v1, :cond_5b

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzM:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_59

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzM:J

    goto :goto_33

    .line 139
    :cond_59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzM:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa0

    cmp-long v1, v3, v5

    if-gez v1, :cond_5a

    goto :goto_33

    :cond_5a
    const-string v1, "Playback stuck buffering and not loading"

    new-instance v2, Ljava/lang/IllegalStateException;

    .line 140
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5b
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzM:J

    .line 142
    :goto_33
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    if-ne v1, v2, :cond_5c

    const/4 v1, 0x1

    goto :goto_34

    :cond_5c
    const/4 v1, 0x0

    :goto_34
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzF:Z

    if-eqz v3, :cond_5d

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzE:Z

    if-eqz v3, :cond_5d

    if-eqz v1, :cond_5d

    const/4 v3, 0x1

    goto :goto_35

    :cond_5d
    const/4 v3, 0x0

    :goto_35
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 143
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzo:Z

    if-eq v5, v3, :cond_5e

    new-instance v5, Lcom/google/android/gms/internal/ads/zzlc;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzb:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzc:J

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzd:J

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzf:Lcom/google/android/gms/internal/ads/zzih;

    move-wide/from16 v53, v12

    iget-boolean v12, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzg:Z

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzh:Lcom/google/android/gms/internal/ads/zzvn;

    move/from16 p1, v1

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzi:Lcom/google/android/gms/internal/ads/zzxh;

    move/from16 v22, v3

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzj:Ljava/util/List;

    move-object/from16 v39, v3

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzk:Lcom/google/android/gms/internal/ads/zzto;

    move-object/from16 v40, v3

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzl:Z

    move/from16 v41, v3

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzm:I

    move/from16 v42, v3

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    move/from16 v36, v12

    move-object/from16 v37, v13

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzp:J

    move-wide/from16 v44, v12

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzq:J

    move-wide/from16 v46, v12

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzr:J

    move-wide/from16 v48, v12

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzlc;->zzs:J

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-wide/from16 v30, v8

    move-wide/from16 v32, v14

    move/from16 v34, v10

    move-object/from16 v35, v2

    move-object/from16 v38, v1

    move-object/from16 v43, v3

    move-wide/from16 v50, v12

    move/from16 v52, v22

    invoke-direct/range {v27 .. v52}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(Lcom/google/android/gms/internal/ads/zzcw;Lcom/google/android/gms/internal/ads/zzto;JJILcom/google/android/gms/internal/ads/zzih;ZLcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzxh;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzto;ZILcom/google/android/gms/internal/ads/zzch;JJJJZ)V

    iput-object v5, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    goto :goto_36

    :cond_5e
    move/from16 p1, v1

    move/from16 v22, v3

    move-wide/from16 v53, v12

    :goto_36
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzE:Z

    if-nez v22, :cond_62

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 144
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zze:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5f

    goto :goto_38

    :cond_5f
    if-nez p1, :cond_61

    const/4 v2, 0x2

    if-ne v1, v2, :cond_60

    goto :goto_37

    :cond_60
    const/4 v2, 0x3

    if-ne v1, v2, :cond_62

    .line 145
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzG:I

    if-eqz v1, :cond_62

    move-wide/from16 v1, v53

    const-wide/16 v3, 0x3e8

    .line 146
    invoke-direct {v11, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzkh;->zzQ(JJ)V

    goto :goto_38

    :cond_61
    :goto_37
    move-wide/from16 v1, v53

    const-wide/16 v3, 0xa

    .line 145
    invoke-direct {v11, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzkh;->zzQ(JJ)V

    .line 147
    :cond_62
    :goto_38
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_3e

    .line 286
    :pswitch_19
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    goto :goto_39

    :cond_63
    const/4 v2, 0x0

    :goto_39
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-direct {v11, v2, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzT(ZIZI)V

    goto/16 :goto_3e

    :pswitch_1a
    const/4 v2, 0x4

    .line 16
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkf;

    const/4 v3, 0x1

    .line 149
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzkf;->zza(I)V

    const/4 v1, 0x0

    .line 150
    invoke-direct {v11, v1, v1, v1, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzM(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Lcom/google/android/gms/internal/ads/zzkk;

    .line 151
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkk;->zzb()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 152
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzo()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_64

    const/4 v9, 0x2

    goto :goto_3a

    :cond_64
    const/4 v9, 0x4

    :goto_3a
    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzg:Lcom/google/android/gms/internal/ads/zzxo;

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzlb;->zzf(Lcom/google/android/gms/internal/ads/zzhg;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v2, 0x2

    .line 154
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zzqm; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzcd; {:try_start_f .. :try_end_f} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzsq; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_3e

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 287
    instance-of v2, v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x3ec

    if-nez v2, :cond_66

    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_65

    goto :goto_3b

    :cond_65
    const/16 v12, 0x3e8

    goto :goto_3c

    :cond_66
    :goto_3b
    const/16 v12, 0x3ec

    .line 288
    :goto_3c
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzih;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzih;

    move-result-object v1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 289
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 290
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 291
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzlc;->zzf(Lcom/google/android/gms/internal/ads/zzih;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    goto :goto_3e

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x7d0

    .line 292
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzD(Ljava/io/IOException;I)V

    goto :goto_3e

    :catch_2
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x3ea

    .line 293
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzD(Ljava/io/IOException;I)V

    goto :goto_3e

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 295
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgf;->zza:I

    .line 294
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzD(Ljava/io/IOException;I)V

    goto :goto_3e

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 296
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcd;->zzb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Z

    if-eq v3, v2, :cond_67

    const/16 v12, 0xbbb

    goto :goto_3d

    :cond_67
    const/16 v12, 0xbb9

    goto :goto_3d

    :cond_68
    const/16 v12, 0x3e8

    .line 295
    :goto_3d
    invoke-direct {v11, v1, v12}, Lcom/google/android/gms/internal/ads/zzkh;->zzD(Ljava/io/IOException;I)V

    goto :goto_3e

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 313
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzqm;->zza:I

    .line 296
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzD(Ljava/io/IOException;I)V

    :cond_69
    :goto_3e
    const/4 v2, 0x1

    goto/16 :goto_41

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 286
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzih;->zze:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6a

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 297
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eqz v2, :cond_6a

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 298
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzih;->zza(Lcom/google/android/gms/internal/ads/zzbw;)Lcom/google/android/gms/internal/ads/zzih;

    move-result-object v1

    :cond_6a
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzih;->zzk:Z

    if-eqz v2, :cond_6b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzL:Lcom/google/android/gms/internal/ads/zzih;

    if-nez v2, :cond_6b

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Recoverable renderer error"

    .line 311
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzL:Lcom/google/android/gms/internal/ads/zzih;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v3, 0x19

    .line 312
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v1

    .line 313
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzk(Lcom/google/android/gms/internal/ads/zzeh;)Z

    goto :goto_3e

    .line 285
    :cond_6b
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzL:Lcom/google/android/gms/internal/ads/zzih;

    if-eqz v2, :cond_6c

    :try_start_10
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 299
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :catch_7
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzL:Lcom/google/android/gms/internal/ads/zzih;

    :cond_6c
    move-object v12, v1

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Playback error"

    .line 300
    invoke-static {v1, v2, v12}, Lcom/google/android/gms/internal/ads/zzer;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzih;->zze:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6f

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 302
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eq v1, v2, :cond_6e

    :goto_3f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 303
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkp;->zze()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v2

    if-eq v1, v2, :cond_6d

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 304
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zza()Lcom/google/android/gms/internal/ads/zzkm;

    goto :goto_3f

    :cond_6d
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Lcom/google/android/gms/internal/ads/zzkp;

    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzkp;->zzd()Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    .line 310
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzf:Lcom/google/android/gms/internal/ads/zzkn;

    .line 306
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkn;->zza:Lcom/google/android/gms/internal/ads/zzto;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzb:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzkn;->zzc:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-wide v3, v7

    .line 307
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzz(Lcom/google/android/gms/internal/ads/zzto;JJJZI)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    :cond_6e
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_40

    :cond_6f
    const/4 v1, 0x0

    .line 308
    :goto_40
    invoke-direct {v11, v2, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(ZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 309
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzlc;->zzf(Lcom/google/android/gms/internal/ads/zzih;)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzlc;

    .line 314
    :cond_70
    :goto_41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzJ()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzch;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzb()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Landroid/os/Looper;

    return-object v0
.end method

.method final synthetic zzd()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zztm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x9

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zztm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(I)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzcw;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkg;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzkg;-><init>(Lcom/google/android/gms/internal/ads/zzcw;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final declared-synchronized zzm(Lcom/google/android/gms/internal/ads/zzlf;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0xe

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzlf;->zzh(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzn(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzei;->zzd(III)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(I)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final declared-synchronized zzp()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x7

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzi(I)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzjy;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzs:J

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzac(Lcom/google/android/gms/internal/ads/zzfpx;J)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzq(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzvi;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzkc;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzkc;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzvi;IJLcom/google/android/gms/internal/ads/zzkb;)V

    const/16 p1, 0x11

    invoke-interface {v0, p1, v8}, Lcom/google/android/gms/internal/ads/zzei;->zzc(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method
