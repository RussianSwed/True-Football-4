.class public final Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# static fields
.field public static final DO_NOT_OFFSET:J = 0x7fffffffffffffffL

.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L


# instance fields
.field private final firstSampleTimestampUs:J

.field private volatile lastSampleTimestamp:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    return-void
.end method

.method public static ptsToUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    .line 123
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToPts(J)J
    .locals 2

    const-wide/32 v0, 0x15f90

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 133
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public adjustSampleTimestamp(J)J
    .locals 5

    .line 89
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    goto :goto_0

    .line 92
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long/2addr v0, p1

    .line 94
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->timestampOffsetUs:J

    .line 96
    :cond_1
    monitor-enter p0

    .line 97
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public adjustTsTimestamp(J)J
    .locals 8

    .line 68
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 71
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->usToPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 72
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    move-wide p1, v6

    .line 78
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public reset()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    return-void
.end method

.method public declared-synchronized waitUntilInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 111
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
