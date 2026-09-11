.class Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$1;
.super Ljava/lang/Object;
.source "TeamIntegrationDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 58
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundButton",
            "b"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 61
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->partyRB:Landroid/widget/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
