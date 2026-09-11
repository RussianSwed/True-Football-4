.class Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;
.super Ljava/lang/Object;
.source "DeveloperToolsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfirmListener"
.end annotation


# instance fields
.field private final activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->startSeasonSimulation()V

    return-void
.end method
