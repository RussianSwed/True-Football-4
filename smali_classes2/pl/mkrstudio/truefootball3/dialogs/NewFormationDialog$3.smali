.class Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$3;
.super Ljava/lang/Object;
.source "NewFormationDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->modifyFormation(Lpl/mkrstudio/truefootball3/enums/Position;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 292
    check-cast p1, Lpl/mkrstudio/truefootball3/enums/Position;

    .line 293
    check-cast p2, Lpl/mkrstudio/truefootball3/enums/Position;

    .line 294
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 296
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/enums/Position;->ordinal()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
