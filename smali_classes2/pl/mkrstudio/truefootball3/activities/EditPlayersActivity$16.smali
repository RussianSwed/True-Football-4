.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 624
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 627
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 628
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$16;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->finish()V

    return-void
.end method
