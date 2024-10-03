.class public final Lcom/android/launcher3/folder/BigFolderIcon$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/BigFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/BigFolderIcon$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BigFolderIcon;
    .locals 4

    const-string p0, "activity"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "group"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "folderInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.BigFolderIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const v0, 0x7f0b019a

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "icon.findViewById(R.id.folder_icon_name)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setFolderName(Lcom/android/launcher3/BubbleTextView;)V

    iget-object v0, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const v2, 0x7f1201a9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget-object v2, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lj3/a;->h()I

    move-result v2

    invoke-virtual {p0}, Lj3/a;->f()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v0, Lc3/a;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "group.context"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;

    invoke-direct {v2, p1}, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;-><init>(Lcom/android/launcher3/folder/BigFolderIcon;)V

    invoke-direct {v0, p3, p4, v2}, Lc3/a;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BigFolderIcon;->setBigFolderIconContainer(Lc3/a;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p3, v1, v0, v2}, Lc3/a;->G(Lc3/a;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    sget-object p3, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;->setInfo(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p3

    iget v0, p4, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    iput v0, p3, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    iput-boolean v0, p3, Lcom/android/launcher3/folder/PreviewBackground;->isCover:Z

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->setActivity(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    const-string p3, "grid.mDotRendererWorkSpace"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setDotRenderer$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/icons/DotRenderer;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->updateDotInfo()V

    iget-object p0, p4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lcom/android/launcher3/folder/BigFolderIcon;->access$getAccessibilityTitle(Lcom/android/launcher3/folder/BigFolderIcon;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p4, p1}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    return-object p1
.end method
