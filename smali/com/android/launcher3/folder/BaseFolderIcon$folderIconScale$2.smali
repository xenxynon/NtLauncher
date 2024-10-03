.class final Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/BaseFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/BaseFolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;->this$0:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const v0, 0x3ed1eb85    # 0.41f

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon$folderIconScale$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
