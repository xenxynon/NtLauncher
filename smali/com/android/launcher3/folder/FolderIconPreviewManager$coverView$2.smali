.class final Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderIconPreviewManager;-><init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lc3/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIconPreviewManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIconPreviewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lc3/b;
    .locals 3

    sget-object v0, Lc3/b;->j:Lc3/b$a;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->access$getContext$p(Lcom/android/launcher3/folder/FolderIconPreviewManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->access$getFolderInfo$p(Lcom/android/launcher3/folder/FolderIconPreviewManager;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->access$getActivityContext$p(Lcom/android/launcher3/folder/FolderIconPreviewManager;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lc3/b$a;->a(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/views/ActivityContext;)Lc3/b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;->invoke()Lc3/b;

    move-result-object p0

    return-object p0
.end method
