.class Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final DEFAULT_PLAYLIST_BLACKLIST_MS:J = 0xea60L

.field private static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field private static final LIVE_VARIANT_SWITCH_SAFETY_EXTRA_SECS:D = 2.0

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private encryptionIv:[B

.field private encryptionIvString:Ljava/lang/String;

.field private encryptionKey:[B

.field private encryptionKeyUri:Landroid/net/Uri;

.field private fatalError:Ljava/io/IOException;

.field private lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

.field private live:Z

.field private final playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

.field private scratchSpace:[B

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final variantLastPlaylistLoadTimesMs:[J

.field private final variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 147
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 148
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 149
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    .line 150
    array-length p1, p2

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 151
    array-length p1, p2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    .line 153
    array-length p1, p2

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    .line 154
    array-length p3, p2

    new-array p3, p3, [I

    const/4 p4, 0x0

    .line 155
    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_0

    .line 156
    aget-object v0, p2, p4

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v0, p1, p4

    .line 157
    aput p4, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 160
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method

.method private buildInitializationChunk(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;
    .locals 11

    .line 508
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 510
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 511
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 513
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 514
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v7

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v0

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILjava/lang/Object;Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)V

    return-object v0
.end method

.method private clearEncryptionData()V
    .locals 1

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 565
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 566
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 567
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private getLiveNextChunkSequenceNumber(III)I
    .locals 12

    if-ne p2, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v1, v0, p2

    .line 442
    aget-object v0, v0, p3

    .line 444
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int/2addr p1, v2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 445
    :goto_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 446
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationSecs:D

    add-double/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 449
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v8, p1, p2

    sub-long v8, v6, v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v8

    .line 452
    aget-wide p2, p1, p3

    sub-long/2addr v6, p2

    long-to-double p1, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v10

    sub-double/2addr v4, p1

    cmpg-double p1, v4, v2

    if-gez p1, :cond_2

    .line 457
    iget p1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget-object p2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 459
    :cond_2
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 460
    iget-object p2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationSecs:D

    sub-double/2addr v4, p2

    cmpg-double p2, v4, v2

    if-gez p2, :cond_3

    .line 462
    iget p2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int/2addr p2, p1

    return p2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 466
    :cond_4
    iget p1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private msToRerequestLiveMediaPlaylist(I)J
    .locals 6

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v0, v0, p1

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    aget-wide v4, v3, p1

    sub-long/2addr v1, v4

    .line 523
    iget p1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationSecs:I

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit8 p1, p1, 0x2

    int-to-long v3, p1

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method private newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
    .locals 9

    .line 538
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 539
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object p3, v0, p3

    iget-object v3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v0, p1

    move-object v2, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object p1
.end method

.method private newMediaPlaylistChunk(IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;
    .locals 12

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 529
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, v11

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 531
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v2, v2, p1

    iget-object v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    move-object v2, v1

    move-object v4, v0

    move v6, p2

    move-object v7, p3

    move v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;ILandroid/net/Uri;)V

    return-object v1
.end method

.method private setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .line 545
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 546
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 551
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-array v1, v2, [B

    .line 553
    array-length v3, v0

    if-le v3, v2, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 554
    :goto_1
    array-length v4, v0

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    .line 558
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    .line 559
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    .line 560
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    return-void
.end method

.method private setMediaPlaylist(ILcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantLastPlaylistLoadTimesMs:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aput-object p2, v0, p1

    .line 573
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    iget-boolean v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->live:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    if-eqz p1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 574
    :cond_0
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->durationUs:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->durationUs:J

    return-wide v0
.end method

.method public getNextChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;JLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 33

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p4

    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 228
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    :goto_0
    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    move-wide v4, v2

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v4

    sub-long v4, v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 234
    :goto_1
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v8, v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    .line 235
    iget-object v4, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_2

    const/16 v25, 0x1

    goto :goto_2

    :cond_2
    const/16 v25, 0x0

    .line 238
    :goto_2
    iget-object v9, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v9, v9, v4

    if-nez v9, :cond_3

    .line 241
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v0

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 242
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v1

    .line 241
    invoke-direct {v6, v4, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newMediaPlaylistChunk(IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 247
    :cond_3
    iget-boolean v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    if-eqz v10, :cond_7

    if-nez v0, :cond_4

    .line 251
    iget-object v1, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    goto :goto_3

    .line 257
    :cond_4
    iget v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:I

    invoke-direct {v6, v10, v1, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getLiveNextChunkSequenceNumber(III)I

    move-result v10

    .line 259
    iget v11, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    if-ge v10, v11, :cond_6

    .line 263
    iget-object v4, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variantPlaylists:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    aget-object v9, v4, v1

    .line 264
    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->chunkIndex:I

    invoke-direct {v6, v4, v1, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getLiveNextChunkSequenceNumber(III)I

    move-result v4

    .line 266
    iget v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    if-ge v4, v10, :cond_5

    .line 267
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    :cond_5
    move/from16 v19, v4

    move v4, v1

    goto :goto_5

    :cond_6
    move/from16 v19, v10

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 275
    iget-object v1, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v1, v10, v8, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v1

    iget v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    :goto_3
    add-int/2addr v1, v10

    :goto_4
    move/from16 v19, v1

    goto :goto_5

    :cond_8
    if-eqz v25, :cond_9

    .line 278
    iget-object v1, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    .line 279
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 278
    invoke-static {v1, v10, v8, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I

    move-result v1

    iget v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    goto :goto_3

    .line 281
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getNextChunkIndex()I

    move-result v1

    goto :goto_4

    .line 285
    :goto_5
    iget v1, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v1, v19, v1

    .line 286
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v1, v10, :cond_c

    .line 287
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->live:Z

    if-nez v0, :cond_a

    .line 288
    iput-boolean v8, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_6

    .line 290
    :cond_a
    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->msToRerequestLiveMediaPlaylist(I)J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_b

    .line 292
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 293
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v0

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v1

    .line 292
    invoke-direct {v6, v4, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newMediaPlaylistChunk(IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto :goto_6

    :cond_b
    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    .line 297
    iput-wide v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->retryInMs:J

    :goto_6
    return-void

    .line 303
    :cond_c
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 306
    iget-boolean v10, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->isEncrypted:Z

    if-eqz v10, :cond_e

    .line 307
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionKeyUri:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 308
    iget-object v11, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKeyUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 310
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 311
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v5

    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v4

    move v4, v5

    move-object v5, v8

    .line 310
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->newEncryptionKeyChunk(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 314
    :cond_d
    iget-object v11, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v12, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIvString:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 315
    iget-object v11, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    iget-object v12, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    invoke-direct {v6, v10, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_7

    .line 318
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->clearEncryptionData()V

    .line 323
    :cond_f
    :goto_7
    iget-boolean v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    if-eqz v10, :cond_12

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v25, :cond_11

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedStartTimeUs()J

    move-result-wide v2

    goto :goto_8

    .line 329
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getAdjustedEndTimeUs()J

    move-result-wide v2

    goto :goto_8

    .line 332
    :cond_12
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    .line 334
    :goto_8
    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double v10, v10, v12

    double-to-long v10, v10

    add-long v17, v2, v10

    .line 335
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v10, v10, v4

    iget-object v12, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    .line 337
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 341
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    if-eqz v10, :cond_13

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;->format:Lcom/google/android/exoplayer2/Format;

    if-ne v10, v12, :cond_13

    const/4 v10, 0x1

    goto :goto_9

    :cond_13
    const/4 v10, 0x0

    :goto_9
    if-eqz v0, :cond_15

    .line 343
    iget v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    iget v13, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    if-ne v11, v13, :cond_15

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v12, v11, :cond_14

    goto :goto_a

    :cond_14
    const/4 v11, 0x0

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v11, 0x1

    .line 349
    :goto_b
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".aac"

    .line 350
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_16

    .line 354
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(J)V

    :goto_c
    move-object/from16 v22, v15

    :goto_d
    const/16 v21, 0x0

    :goto_e
    const/16 v24, 0x1

    goto/16 :goto_14

    :cond_16
    const-string v14, ".ac3"

    .line 355
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22

    const-string v14, ".ec3"

    .line 356
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    goto/16 :goto_13

    :cond_17
    const-string v14, ".mp3"

    .line 358
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 359
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(J)V

    goto :goto_c

    :cond_18
    const-string v14, ".webvtt"

    .line 360
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_21

    const-string v14, ".vtt"

    .line 361
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    goto/16 :goto_12

    :cond_19
    const-string v14, ".mp4"

    .line 365
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    if-eqz v11, :cond_1b

    if-eqz v10, :cond_1a

    .line 369
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_10

    .line 371
    :cond_1a
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    iget v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v0

    .line 373
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v4, v5, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/extractor/TimestampAdjuster;)V

    :goto_f
    move-object/from16 v22, v0

    move-object v0, v4

    goto :goto_11

    .line 376
    :cond_1b
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    :goto_10
    move-object/from16 v22, v15

    :goto_11
    const/16 v21, 0x1

    goto :goto_e

    :cond_1c
    if-eqz v11, :cond_20

    if-eqz v10, :cond_1d

    .line 382
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_10

    .line 384
    :cond_1d
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    iget v13, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v0, v13, v2, v3}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v0

    .line 389
    iget-object v13, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->variants:[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aget-object v4, v13, v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 390
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1f

    .line 394
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    const/4 v5, 0x2

    .line 397
    :cond_1e
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "video/avc"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    or-int/lit8 v5, v5, 0x4

    .line 401
    :cond_1f
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance v13, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;

    invoke-direct {v13, v5}, Lcom/google/android/exoplayer2/extractor/ts/DefaultStreamReaderFactory;-><init>(I)V

    invoke-direct {v4, v0, v13, v8}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader$Factory;Z)V

    goto :goto_f

    .line 406
    :cond_20
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v22, v15

    const/16 v21, 0x0

    const/16 v24, 0x0

    goto :goto_14

    .line 362
    :cond_21
    :goto_12
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    iget v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->getAdjuster(IJ)Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v0

    .line 364
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v13, v12, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v4, v13, v0}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;)V

    move-object/from16 v22, v0

    move-object v0, v4

    goto/16 :goto_d

    .line 357
    :cond_22
    :goto_13
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

    goto/16 :goto_c

    :goto_14
    if-eqz v11, :cond_23

    .line 410
    iget-object v4, v9, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v4, :cond_23

    if-nez v10, :cond_23

    .line 412
    invoke-direct {v6, v9, v0, v12}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->buildInitializationChunk(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void

    .line 416
    :cond_23
    iput-object v15, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    .line 418
    new-instance v26, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v11, v26

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/16 v32, 0x0

    move-wide/from16 v28, v4

    move-wide/from16 v30, v8

    invoke-direct/range {v26 .. v32}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 420
    new-instance v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-object v9, v4

    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 421
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v13

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v14

    iget v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    move/from16 v20, v1

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionKey:[B

    move-object/from16 v26, v1

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->encryptionIv:[B

    move-object/from16 v27, v1

    move-wide v15, v2

    move-object/from16 v23, v0

    invoke-direct/range {v9 .. v27}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIZLcom/google/android/exoplayer2/extractor/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/Extractor;ZZ[B[B)V

    iput-object v4, v7, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    return-void
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public isLive()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->live:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    throw v0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 2

    .line 476
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    if-eqz v0, :cond_0

    .line 477
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->lastLoadedInitializationChunk:Lcom/google/android/exoplayer2/source/hls/HlsInitializationChunk;

    goto :goto_0

    .line 478
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    if-eqz v0, :cond_1

    .line 479
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;

    .line 480
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 481
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->getResult()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setMediaPlaylist(ILcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_0

    .line 482
    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_2

    .line 483
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 484
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 485
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object p1

    .line 485
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setEncryptionData(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 500
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 501
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    .line 500
    invoke-static {p2, p1, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public selectTracks(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    return-void
.end method
