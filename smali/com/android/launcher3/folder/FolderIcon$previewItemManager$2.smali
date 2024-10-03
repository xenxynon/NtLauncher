.class final Lcom/android/launcher3/folder/FolderIcon$previewItemManager$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/android/launcher3/folder/PreviewItemManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$previewItemManager$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/folder/PreviewItemManager;
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon$previewItemManager$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$previewItemManager$2;->invoke()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    return-object p0
.end method
