.class public Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSelectSystemShortcut"
.end annotation


# instance fields
.field private final mSplitPositionOption:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

.field private final mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 6

    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->iconResId:I

    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->textResId:I

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mSplitPositionOption:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mSplitPositionOption:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/TaskView;->initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    return-void
.end method
