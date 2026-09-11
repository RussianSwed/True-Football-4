.class public final Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;
.super Ljava/lang/Object;
.source "DefaultStreamReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4


# instance fields
.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;->flags:I

    return-void
.end method


# virtual methods
.method public createStreamReader(ILcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_8

    const/16 v0, 0x15

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x24

    if-eq p1, v0, :cond_2

    const/16 v0, 0x87

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x81

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return-object v3

    .line 66
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 63
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;-><init>()V

    return-object p1

    .line 70
    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;->flags:I

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_0
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-direct {v3, p2, v2}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;-><init>(ZZ)V

    :goto_1
    return-object v3

    .line 76
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    return-object p1

    .line 59
    :cond_8
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    iget-object p1, p2, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v3, v2, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    :goto_2
    return-object v3

    .line 57
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 68
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>()V

    return-object p1
.end method
