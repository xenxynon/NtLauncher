.class public Landroidx/slice/widget/ShortcutContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mColorItem:Landroidx/slice/SliceItem;

.field private final mHasTopLevelColorItem:Z

.field private mIcon:Landroidx/slice/SliceItem;

.field private mLabel:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/ListContent;)V
    .locals 6
    .param p1    # Landroidx/slice/widget/ListContent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getColorItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/slice/widget/ShortcutContent;->mHasTopLevelColorItem:Z

    if-nez v1, :cond_1

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object p1

    const-string v1, "text"

    const-string v2, "title"

    const-string v3, "image"

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    new-instance v5, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v5, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v5}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v5}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-static {p1, v3, v2, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v5}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-static {p1, v1, v4, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    :cond_2
    iget-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_3

    const-string p1, "action"

    invoke-static {v0, p1, v4, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    :cond_3
    iget-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {v0, v3, v2, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    :cond_5
    iget-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    if-nez p1, :cond_6

    invoke-static {v0, v1, v2, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    :cond_6
    iget-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    invoke-static {v0, v3, v4, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    :cond_8
    iget-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    if-nez p1, :cond_9

    invoke-static {v0, v1, v4, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    :cond_9
    return-void
.end method


# virtual methods
.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 2

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_2
    iget-boolean v1, p0, Landroidx/slice/widget/ShortcutContent;->mHasTopLevelColorItem:Z

    if-nez v1, :cond_3

    iget-object p0, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_3
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getActionItem()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ShortcutContent;->mActionItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getColorItem()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ShortcutContent;->mColorItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getIcon()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ShortcutContent;->mIcon:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public getLabel()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/ShortcutContent;->mLabel:Landroidx/slice/SliceItem;

    return-object p0
.end method
