.class public Lcom/facebook/ads/internal/j/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/j/a$b;,
        Lcom/facebook/ads/internal/j/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private final e:Lcom/facebook/ads/internal/j/a$a;

.field private final f:Landroid/os/Handler;

.field private final g:Z

.field private h:Ljava/lang/Runnable;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/facebook/ads/internal/j/b;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->i:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/facebook/ads/internal/j/a;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->a:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/internal/j/a;->n:J

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    iput-object p1, p0, Lcom/facebook/ads/internal/j/a;->b:Landroid/view/View;

    iput p2, p0, Lcom/facebook/ads/internal/j/a;->c:I

    iput-object p5, p0, Lcom/facebook/ads/internal/j/a;->e:Lcom/facebook/ads/internal/j/a$a;

    iput-boolean p4, p0, Lcom/facebook/ads/internal/j/a;->g:Z

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput p3, p0, Lcom/facebook/ads/internal/j/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/facebook/ads/internal/j/a$a;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZLcom/facebook/ads/internal/j/a$a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return p1
.end method

.method private static a(Ljava/util/Vector;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v6, 0x0

    aput v1, v4, v6

    const-class v7, Z

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    invoke-virtual {p0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    add-int/lit8 v11, v8, 0x1

    iget v12, v10, Landroid/graphics/Rect;->left:I

    aput v12, v2, v8

    add-int/lit8 v8, v9, 0x1

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    aput v12, v3, v9

    add-int/lit8 v9, v11, 0x1

    iget v12, v10, Landroid/graphics/Rect;->right:I

    aput v12, v2, v11

    add-int/lit8 v11, v8, 0x1

    iget v10, v10, Landroid/graphics/Rect;->top:I

    aput v10, v3, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    move v9, v11

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    invoke-virtual {p0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v9}, Lcom/facebook/ads/internal/j/a;->a([II)I

    move-result v9

    iget v10, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v10}, Lcom/facebook/ads/internal/j/a;->a([II)I

    move-result v10

    iget v11, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v11}, Lcom/facebook/ads/internal/j/a;->a([II)I

    move-result v11

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v8}, Lcom/facebook/ads/internal/j/a;->a([II)I

    move-result v8

    add-int/2addr v9, v5

    :goto_2
    if-gt v9, v10, :cond_2

    add-int/lit8 v12, v11, 0x1

    :goto_3
    if-gt v12, v8, :cond_1

    aget-object v13, v4, v9

    aput-boolean v5, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_4
    if-ge p0, v1, :cond_6

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_5

    aget-object v7, v4, p0

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_4

    aget v7, v2, p0

    add-int/lit8 v8, p0, -0x1

    aget v8, v2, v8

    sub-int/2addr v7, v8

    aget v8, v3, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v3, v9

    sub-int/2addr v8, v9

    mul-int v7, v7, v8

    goto :goto_6

    :cond_4
    const/4 v7, 0x0

    :goto_6
    add-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    return v0
.end method

.method private static a([II)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    aget v3, p0, v2

    if-le v3, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/facebook/ads/internal/j/a;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/j/a;->b:Landroid/view/View;

    return-object p0
.end method

.method public static a(Landroid/view/View;I)Lcom/facebook/ads/internal/j/b;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "adView is null."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->c:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "adView has no parent."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->d:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "adView parent is not set to VISIBLE."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->d:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "adView window is not set to VISIBLE."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->e:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gtz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const-string v2, "adView is too transparent."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->h:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->f:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7}, Lcom/facebook/ads/internal/j;->q(Landroid/content/Context;)Z

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    if-eqz v10, :cond_7

    new-instance v6, Landroid/graphics/Rect;

    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v1, v1, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v10, v5, v1

    aget v13, v5, v12

    aget v14, v5, v1

    add-int/2addr v14, v2

    aget v15, v5, v12

    add-int/2addr v15, v3

    invoke-virtual {v6, v10, v13, v14, v15}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int v9, v9, v6

    int-to-float v6, v9

    mul-float v6, v6, v11

    mul-int v9, v2, v3

    goto :goto_0

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Vector;)I

    move-result v10

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Vector;)I

    move-result v6

    sub-int/2addr v6, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    mul-int v9, v9, v10

    int-to-float v6, v6

    mul-float v6, v6, v11

    :goto_0
    int-to-float v9, v9

    div-float v9, v6, v9

    :cond_8
    invoke-static {v7}, Lcom/facebook/ads/internal/j;->m(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v7}, Lcom/facebook/ads/internal/j;->n(Landroid/content/Context;)I

    move-result v10

    if-eqz v6, :cond_9

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v9, v9, v2

    int-to-float v2, v10

    cmpg-float v2, v9, v2

    if-gez v2, :cond_c

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "adView visible area is too small [%.2f%% visible, current threshold %d%%]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->n:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-object v0

    :cond_9
    aget v4, v5, v1

    if-ltz v4, :cond_10

    iget v4, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v6, v5, v1

    sub-int/2addr v4, v6

    if-ge v4, v2, :cond_a

    goto/16 :goto_1

    :cond_a
    int-to-double v10, v3

    move/from16 v2, p1

    int-to-double v13, v2

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v15, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    div-double/2addr v10, v15

    double-to-int v2, v10

    aget v4, v5, v12

    if-gez v4, :cond_b

    aget v4, v5, v12

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v2, :cond_b

    const-string v2, "adView is not visible from the top."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->k:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-object v0

    :cond_b
    aget v4, v5, v12

    add-int/2addr v4, v3

    iget v3, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v3

    if-le v4, v2, :cond_c

    const-string v2, "adView is not visible from the bottom."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->l:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-object v0

    :cond_c
    invoke-static {v7}, Lcom/facebook/ads/internal/util/p;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "Screen is not interactive."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->m:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-object v0

    :cond_d
    invoke-static {v7}, Lcom/facebook/ads/internal/util/ao;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/ao;->a(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "Keyguard is obstructing view."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->p:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-object v0

    :cond_e
    invoke-static {v7}, Lcom/facebook/ads/internal/j;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v2}, Lcom/facebook/ads/internal/util/ao;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "Ad is on top of the Lockscreen."

    invoke-static {v0, v1, v3}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->q:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9, v2}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;FLjava/util/Map;)V

    return-object v0

    :cond_f
    const-string v1, "adView is visible."

    invoke-static {v0, v12, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->b:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9, v2}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;FLjava/util/Map;)V

    return-object v0

    :cond_10
    :goto_1
    const-string v2, "adView is not fully on screen horizontally."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->j:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    return-object v0

    :catch_0
    const-string v2, "Cannot get location on screen."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->g:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0

    :cond_11
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adView has invisible dimensions (w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->g:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/j/b;)Lcom/facebook/ads/internal/j/b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    return-object p1
.end method

.method private static a(Landroid/view/View;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p0, v2, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/j/a;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/j/a;)Lcom/facebook/ads/internal/j/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/j/a;->e:Lcom/facebook/ads/internal/j/a$a;

    return-object p0
.end method

.method private static b(Landroid/view/View;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/facebook/ads/internal/j/a;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/j/a;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/j/a;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/j/a;->c:I

    return p0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/j/a;)I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/j/a;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/j/a;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/j/a;->d:I

    return p0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/j/a;)Lcom/facebook/ads/internal/j/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/j/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/j/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/j/a;->g:Z

    return p0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/j/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    return p0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/j/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/j/a;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/j/a;)I
    .locals 0

    iget p0, p0, Lcom/facebook/ads/internal/j/a;->j:I

    return p0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/j/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/j/a;->b()V

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/j/a$b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/j/a$b;-><init>(Lcom/facebook/ads/internal/j/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a;->h:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    iget v2, p0, Lcom/facebook/ads/internal/j/a;->i:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->a:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a;->i:I

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vrc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vp"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vh"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/facebook/ads/internal/j/a;->n:J

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/g;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vt"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a;->h:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a;->j:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/facebook/ads/internal/j/c;->values()[Lcom/facebook/ads/internal/j/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j/b;->b()I

    move-result v1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/j/b;->c()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, " (%.1f%%)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
