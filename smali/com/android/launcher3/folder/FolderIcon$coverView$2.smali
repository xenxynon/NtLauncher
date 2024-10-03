.class final Lcom/android/launcher3/folder/FolderIcon$coverView$2;
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
        "Lc3/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$coverView$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lc3/b;
    .locals 3

    sget-object v0, Lc3/b;->j:Lc3/b$a;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$coverView$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon$coverView$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lc3/b$a;->a(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/views/ActivityContext;)Lc3/b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon$coverView$2;->invoke()Lc3/b;

    move-result-object p0

    return-object p0
.end method
