.class final Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/BigFolderIcon$Companion;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BigFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/nothing/launcher/views/NTBubbleTextView;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $icon:Lcom/android/launcher3/folder/BigFolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/BigFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;->$icon:Lcom/android/launcher3/folder/BigFolderIcon;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/nothing/launcher/views/NTBubbleTextView;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;->$icon:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p1, v0}, Lcom/nothing/launcher/views/NTBubbleTextView;->setBigFolderIcon(Lcom/android/launcher3/folder/BigFolderIcon;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;->$icon:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->setRealLongClickItem(Landroid/view/View;)V

    sget-object p1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;->$icon:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon$Companion$inflateIcon$1;->invoke(Lcom/nothing/launcher/views/NTBubbleTextView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
