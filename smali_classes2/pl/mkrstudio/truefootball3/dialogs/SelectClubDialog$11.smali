.class Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$11;
.super Ljava/lang/Object;
.source "SelectClubDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$11;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

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
            "arg0"
        }
    .end annotation

    .line 228
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$11;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->dismiss()V

    .line 229
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$11;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->move:Z

    return-void
.end method
