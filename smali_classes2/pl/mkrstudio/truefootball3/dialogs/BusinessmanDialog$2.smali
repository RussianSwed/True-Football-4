.class Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$2;
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

    .line 149
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

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

    .line 153
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/BusinessmanDialog;->dismiss()V

    return-void
.end method
