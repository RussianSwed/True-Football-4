.class public Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
.super Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field public final contentLength:J

.field private final indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field private final segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V
    .locals 11

    move-object v8, p0

    move-object/from16 v9, p5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 190
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V

    .line 191
    iget-object v0, v9, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 192
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-wide/from16 v6, p7

    .line 193
    iput-wide v6, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    new-instance v10, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v2, v9, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v10

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    :goto_0
    iput-object v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;JJJJLjava/lang/String;J)Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    .locals 14

    .line 172
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    sub-long v0, p7, p5

    const-wide/16 v8, 0x1

    add-long v5, v0, v8

    const/4 v2, 0x0

    move-object v0, v7

    move-object/from16 v1, p4

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 174
    new-instance v11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    sub-long v0, p11, p9

    add-long v12, v0, v8

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, v11

    move-object v1, v7

    move-object/from16 v6, p4

    move-wide/from16 v7, p9

    move-wide v9, v12

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJLjava/lang/String;JJ)V

    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object/from16 p4, v0

    move-object/from16 p5, p0

    move-wide/from16 p6, p1

    move-object/from16 p8, p3

    move-object/from16 p9, v11

    move-object/from16 p10, p13

    move-wide/from16 p11, p14

    invoke-direct/range {p4 .. p12}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
