.class public final Lcom/android/launcher3/folder/BaseFolderIcon$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/BaseFolderIcon;
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

    invoke-direct {p0}, Lcom/android/launcher3/folder/BaseFolderIcon$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflateFolderAndIcon(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 2
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

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "group"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "folderInfo"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-static {p3}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/BigFolderIcon$Companion;

    const v1, 0x7f0e0044

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher3/folder/BigFolderIcon$Companion;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/BigFolderIcon;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/folder/FolderIcon;->Companion:Lcom/android/launcher3/folder/FolderIcon$Companion;

    const v1, 0x7f0e0085

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon$Companion;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    const-string p2, "folder"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    return-object p1
.end method
