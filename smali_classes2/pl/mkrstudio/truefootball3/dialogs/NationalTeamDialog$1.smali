.class Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog$1;
.super Ljava/lang/Object;
.source "NationalTeamDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;)V
    .locals 0

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NationalTeamDialog;->dismiss()V

    return-void
.end method
