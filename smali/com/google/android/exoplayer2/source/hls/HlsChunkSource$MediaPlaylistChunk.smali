.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;
.super Lcom/google/android/exoplayer2/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPlaylistChunk"
.end annotation


# instance fields
.field private final playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

.field private final playlistUri:Landroid/net/Uri;

.field private result:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field public final variantIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;[BLcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;ILandroid/net/Uri;)V
    .locals 9

    move-object v8, p0

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 638
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V

    move/from16 v0, p8

    .line 640
    iput v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    move-object/from16 v0, p7

    .line 641
    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    move-object/from16 v0, p9

    .line 642
    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->playlistUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->playlistUri:Landroid/net/Uri;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->result:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-void
.end method

.method public getResult()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$MediaPlaylistChunk;->result:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method
