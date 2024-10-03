.class public abstract Lcom/android/launcher3/folder/BaseFolderIcon;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/views/IconLabelDotView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/BaseFolderIcon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/BaseFolderIcon$Companion;

.field private static final DOT_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/BaseFolderIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activity:Lcom/android/launcher3/views/ActivityContext;

.field private background:Lcom/android/launcher3/folder/PreviewBackground;

.field private backgroundIsVisible:Z

.field private dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

.field private final dotParams$delegate:Ln5/e;

.field public dotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private dotScale:F

.field private dotScaleAnim:Landroid/animation/Animator;

.field public folder:Lcom/android/launcher3/folder/Folder;

.field private final folderIconScale$delegate:Ln5/e;

.field public folderName:Lcom/android/launcher3/BubbleTextView;

.field private forceHideDot:Z

.field public info:Lcom/android/launcher3/model/data/FolderInfo;

.field private longCLickListener:Landroid/view/View$OnLongClickListener;

.field private final longPressHelper$delegate:Ln5/e;

.field private final multiTranslateDelegate$delegate:Ln5/e;

.field private final openAlarm:Lcom/android/launcher3/Alarm;

.field private scaleForReorderBounce:F

.field private final touchArea:Landroid/graphics/Rect;

.field private final translationForMoveFromCenterAnimation:Landroid/graphics/PointF;

.field private final translationForReorderBounce:Landroid/graphics/PointF;

.field private final translationForReorderPreview:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/folder/BaseFolderIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/BaseFolderIcon$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/folder/BaseFolderIcon;->Companion:Lcom/android/launcher3/folder/BaseFolderIcon$Companion;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/folder/BaseFolderIcon$Companion$DOT_SCALE_PROPERTY$1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon$Companion$DOT_SCALE_PROPERTY$1;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/android/launcher3/folder/BaseFolderIcon;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/folder/BaseFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->backgroundIsVisible:Z

    new-instance p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p1}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    new-instance p1, Lcom/android/launcher3/folder/BaseFolderIcon$multiTranslateDelegate$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon$multiTranslateDelegate$2;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->multiTranslateDelegate$delegate:Ln5/e;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->touchArea:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->translationForReorderBounce:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->translationForReorderPreview:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->translationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->scaleForReorderBounce:F

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->openAlarm:Lcom/android/launcher3/Alarm;

    new-instance p1, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {p1}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    sget-object p1, Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;->INSTANCE:Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotParams$delegate:Ln5/e;

    new-instance p1, Lcom/android/launcher3/folder/BaseFolderIcon$longPressHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon$longPressHelper$2;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->longPressHelper$delegate:Ln5/e;

    new-instance p1, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->folderIconScale$delegate:Ln5/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getDotScale$p(Lcom/android/launcher3/folder/BaseFolderIcon;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScale:F

    return p0
.end method

.method public static final synthetic access$setDotScale$p(Lcom/android/launcher3/folder/BaseFolderIcon;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScale:F

    return-void
.end method

.method public static final synthetic access$setDotScaleAnim$p(Lcom/android/launcher3/folder/BaseFolderIcon;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScaleAnim:Landroid/animation/Animator;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/Alarm;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onDragEnter$lambda$2(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private final cancelDotScaleAnim()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScaleAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->showFolderSuggestName$lambda$4$lambda$3(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->showFolderSuggestName$lambda$4(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;)V

    return-void
.end method

.method private final getDotParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotParams$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    return-object p0
.end method

.method private final getLongPressHelper()Lcom/android/launcher3/CheckLongPressHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->longPressHelper$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CheckLongPressHelper;

    return-object p0
.end method

.method private final getMultiTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->multiTranslateDelegate$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object p0
.end method

.method public static final inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ")",
            "Lcom/android/launcher3/folder/BaseFolderIcon;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/folder/BaseFolderIcon;->Companion:Lcom/android/launcher3/folder/BaseFolderIcon$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon$Companion;->inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private static final onDragEnter$lambda$2(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/Alarm;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->beginExternalDrag()V

    return-void
.end method

.method private final setLabelSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    const-string v1, "info.fromLabelState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/nothing/launcher/folder/NTFolderNameEditText;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto/16 :goto_0
.end method

.method private final shouldIgnoreTouchDown(FF)Z
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->touchArea:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final showFolderSuggestName$lambda$4(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 3

    const-string v0, "$d"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nameInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->folderNameProvider:Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    new-instance v0, Lcom/android/launcher3/folder/c;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/launcher3/folder/c;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final showFolderSuggestName$lambda$4$lambda$3(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nameInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$d"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->setLabelSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final updateDotScale(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->animateDotScale([F)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->cancelDotScaleAnim()V

    iput v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScale:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    const-string v0, "dragInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public final animateBgShadowAndStroke()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->fadeInBackgroundShadow()V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->animateBackgroundStroke()V

    return-void
.end method

.method public final varargs animateDotScale([F)V
    .locals 2

    const-string v0, "dotScales"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->cancelDotScaleAnim()V

    sget-object v0, Lcom/android/launcher3/folder/BaseFolderIcon;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/launcher3/folder/BaseFolderIcon$animateDotScale$1$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/BaseFolderIcon$animateDotScale$1$1;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScaleAnim:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getLongPressHelper()Lcom/android/launcher3/CheckLongPressHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public clearLeaveBehindIfExists()V
    .locals 0

    return-void
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->forceHideDot:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->hasDot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getDotParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getDotParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotScale:F

    iget-object v3, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    invoke-static {v4}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/PreviewBackground;->getScaleProgress(Z)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Le6/e;->a(FF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getDotParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getDotColor()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getDotRenderer$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/icons/DotRenderer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getDotParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    :cond_1
    return-void
.end method

.method public abstract drawPreview(Landroid/graphics/Canvas;)V
.end method

.method public final getActivity()Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->activity:Lcom/android/launcher3/views/ActivityContext;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "activity"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p0
.end method

.method public final getBackgroundIsVisible$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->backgroundIsVisible:Z

    return p0
.end method

.method public final getDotRenderer$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/icons/DotRenderer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dotRenderer"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFolder()Lcom/android/launcher3/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->folder:Lcom/android/launcher3/folder/Folder;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "folder"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p0
.end method

.method public final getFolderIconScale()F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->folderIconScale$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getFolderName()Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->folderName:Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "folderName"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->info:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "info"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "outBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getReorderBounceScale()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->scaleForReorderBounce:F

    return p0
.end method

.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getMultiTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasDot()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p0

    return p0
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->updateDotScale(ZZ)V

    return-void
.end method

.method public abstract onCoverValueChange()V
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 9

    const-string v0, "dragInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    iget v7, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v8, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;IIII)V

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->openAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/a;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->openAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDragExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->openAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 8

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    const-string v1, "{\n            // Came fr\u2026ceItem(context)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->notifyDrop()V

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    move v6, v0

    move-object v1, p0

    move-object v3, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/folder/BaseFolderIcon;->onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V

    return-void
.end method

.method protected abstract onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V
.end method

.method public abstract onFolderClose(I)V
.end method

.method public abstract onFolderTypeChange()V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->longCLickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo5/j;->A(Ljava/lang/Iterable;)Lg6/g;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/launcher3/folder/BaseFolderIcon$onRemove$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon$onRemove$1;-><init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-static {p1, v1}, Lg6/j;->o(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/DotInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/dot/FolderDotInfo;->subtractDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->updateDotScale(ZZ)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/folder/BaseFolderIcon;->shouldIgnoreTouchDown(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getLongPressHelper()Lcom/android/launcher3/CheckLongPressHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public abstract performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V
.end method

.method public abstract performDestroyAnimation(Ljava/lang/Runnable;)V
.end method

.method public final refreshFolderBgColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    sget-object v1, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p0

    invoke-virtual {v1, v2, p0}, Lz3/d;->d(Landroid/content/Context;Z)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/PreviewBackground;->refreshBgColor(I)V

    return-void
.end method

.method public final removeItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public final removeListeners()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    return-void
.end method

.method public final setActivity(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->activity:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method

.method public final setBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    return-void
.end method

.method public final setBackgroundIsVisible$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->backgroundIsVisible:Z

    return-void
.end method

.method public final setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V
    .locals 2

    const-string v0, "dtInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->updateDotScale(ZZ)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    return-void
.end method

.method public final setDotRenderer$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/icons/DotRenderer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->dotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    return-void
.end method

.method public final setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->folder:Lcom/android/launcher3/folder/Folder;

    return-void
.end method

.method public final setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    const-string v0, "bg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->background:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/PreviewBackground;->setInvalidateDelegate(Landroid/view/View;)V

    return-void
.end method

.method public final setFolderName(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->folderName:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method

.method public setForceHideDot(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->forceHideDot:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->forceHideDot:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->hasDot()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->animateDotScale([F)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIconVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->backgroundIsVisible:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setInfo(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->info:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->longCLickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon;->scaleForReorderBounce:F

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public final setTextVisible(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showFolderSuggestName(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/folder/b;

    invoke-direct {v2, p1, p0, v0}, Lcom/android/launcher3/folder/b;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateDotInfo()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    return-void
.end method

.method public abstract updatePreviewItems(Ljava/util/function/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p1, v2}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method
