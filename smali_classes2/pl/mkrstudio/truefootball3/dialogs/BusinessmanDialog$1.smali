.class Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$1;
.super Ljava/lang/Object;
.source "BusinessmanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->showGreeting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

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

    .line 143
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->showAd:Z

    .line 144
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->dismiss()V

    return-void
.end method
