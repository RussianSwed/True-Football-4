.class Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;
.super Ljava/lang/Object;
.source "TeamOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$button"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;->val$button:Landroid/widget/Button;

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->clickedButton:Landroid/widget/Button;

    .line 44
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->dismiss()V

    return-void
.end method
