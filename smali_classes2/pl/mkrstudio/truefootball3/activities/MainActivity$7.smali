.class Lpl/mkrstudio/truefootball3/activities/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;->onMenuButtonClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 824
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->scd:Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;

    return-void
.end method
