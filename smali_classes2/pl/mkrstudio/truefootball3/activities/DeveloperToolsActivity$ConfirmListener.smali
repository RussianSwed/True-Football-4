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

.field private final daysToSimulate:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;->daysToSimulate:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;->activity:Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;

    iget p2, p0, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity$ConfirmListener;->daysToSimulate:I

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/DeveloperToolsActivity;->startSimulation(I)V

    return-void
.end method
