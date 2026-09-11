.class synthetic Lpl/mkrstudio/truefootball3/objects/Player$1;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/objects/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 537
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Shape;->values()[Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Player$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I

    :try_start_0
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Player$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->BAD:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Player$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Player$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/Player$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$Shape:[I

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Shape;->VERY_GOOD:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
