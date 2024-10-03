.class public final Lcom/nothing/launcher/popup/NTPopupContainer$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/popup/NTPopupContainer;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/popup/NTPopupContainer$d$a;
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/popup/NTPopupContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nothing/launcher/popup/NTPopupContainer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic h:Z


# direct methods
.method constructor <init>(Lcom/nothing/launcher/popup/NTPopupContainer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/popup/NTPopupContainer<",
            "TT;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    iput-boolean p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 4

    const-string v0, "dragObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->h:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const-string v0, "popupOwnerView"

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-virtual {p2, v1}, Lcom/nothing/launcher/popup/b;->setHighlightIconView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->k(Lcom/nothing/launcher/popup/NTPopupContainer;)Lcom/nothing/launcher/popup/NTPopupContainer$b;

    move-result-object p2

    sget-object v2, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-ne p2, v2, :cond_d

    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-static {p2, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x4

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_3
    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-virtual {p2}, Lcom/nothing/launcher/popup/b;->addHighlightIconView()V

    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->k(Lcom/nothing/launcher/popup/NTPopupContainer;)Lcom/nothing/launcher/popup/NTPopupContainer$b;

    move-result-object p2

    sget-object v2, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const/4 v3, 0x0

    if-ne p2, v2, :cond_7

    iget-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-static {p2, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v1

    :cond_5
    invoke-static {p1, p2}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, p0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->k(Lcom/nothing/launcher/popup/NTPopupContainer;)Lcom/nothing/launcher/popup/NTPopupContainer$b;

    move-result-object p1

    sget-object p2, Lcom/nothing/launcher/popup/NTPopupContainer$b;->h:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    if-ne p1, p2, :cond_a

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, p1

    :goto_2
    invoke-static {p0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.nothing.launcher.views.NTBubbleTextView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p0}, Lcom/nothing/launcher/views/NTBubbleTextView;->getBigFolderIcon()Lcom/android/launcher3/folder/BigFolderIcon;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v1

    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v1, p1

    :goto_3
    invoke-static {p0, v1}, Lcom/nothing/launcher/popup/NTPopupContainer;->o(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/BaseFolderIcon;->setTextVisible(Z)V

    :cond_d
    :goto_4
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5

    const-string v0, "dragObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->k(Lcom/nothing/launcher/popup/NTPopupContainer;)Lcom/nothing/launcher/popup/NTPopupContainer$b;

    move-result-object v0

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "popupOwnerView"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/popup/b;->setHighlightIconView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-static {p1, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nothing/launcher/popup/b;->createHighlightView(Lcom/android/launcher3/BubbleTextView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nothing/launcher/popup/b;->setHighlightIconView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    invoke-static {p0, v2}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.nothing.launcher.views.NTBubbleTextView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p0}, Lcom/nothing/launcher/views/NTBubbleTextView;->getBigFolderIcon()Lcom/android/launcher3/folder/BigFolderIcon;

    move-result-object p0

    if-nez p0, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-static {p1, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nothing/launcher/popup/b;->createHighlightView(Lcom/android/launcher3/BubbleTextView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nothing/launcher/popup/b;->setHighlightIconView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-static {p1, v0}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v2

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    const/16 v1, -0x68

    invoke-static {p1, v1}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, -0x64

    invoke-static {p1, v1}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, -0x66

    invoke-static {p1, v1}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v1

    if-nez v1, :cond_a

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz p1, :cond_c

    :cond_a
    iget-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p1}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_b
    invoke-static {p1, v1}, Lcom/nothing/launcher/popup/NTPopupContainer;->n(Lcom/nothing/launcher/popup/NTPopupContainer;Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_c
    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->j(Lcom/nothing/launcher/popup/NTPopupContainer;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 2

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$d;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    invoke-static {p0}, Lcom/nothing/launcher/popup/NTPopupContainer;->i(Lcom/nothing/launcher/popup/NTPopupContainer;)I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
