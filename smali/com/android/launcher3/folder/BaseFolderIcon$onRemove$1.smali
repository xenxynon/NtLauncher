.class final Lcom/android/launcher3/folder/BaseFolderIcon$onRemove$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/BaseFolderIcon;->onRemove(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
        "Lcom/android/launcher3/dot/DotInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/BaseFolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon$onRemove$1;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon$onRemove$1;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon$onRemove$1;->invoke(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method
