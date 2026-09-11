.class Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$6;
.super Ljava/lang/Object;
.source "RewardPlayerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->initReaction(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

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
            "v"
        }
    .end annotation

    .line 366
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->dismiss()V

    return-void
.end method
