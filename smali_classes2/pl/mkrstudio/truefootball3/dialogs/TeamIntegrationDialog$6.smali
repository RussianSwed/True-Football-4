.class Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$6;
.super Ljava/lang/Object;
.source "TeamIntegrationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

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

    .line 123
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$6;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dismiss()V

    return-void
.end method
