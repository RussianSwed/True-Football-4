.class Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$2;
.super Ljava/lang/Object;
.source "NewYouthTeamDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

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

    .line 99
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->dismiss()V

    return-void
.end method
