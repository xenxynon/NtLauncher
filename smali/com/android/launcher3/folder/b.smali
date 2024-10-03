.class public final synthetic Lcom/android/launcher3/folder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/DropTarget$DragObject;

.field public final synthetic h:Lcom/android/launcher3/folder/BaseFolderIcon;

.field public final synthetic i:Lcom/android/launcher3/folder/FolderNameInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/b;->g:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object p2, p0, Lcom/android/launcher3/folder/b;->h:Lcom/android/launcher3/folder/BaseFolderIcon;

    iput-object p3, p0, Lcom/android/launcher3/folder/b;->i:Lcom/android/launcher3/folder/FolderNameInfos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/b;->g:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/folder/b;->h:Lcom/android/launcher3/folder/BaseFolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/b;->i:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->e(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;)V

    return-void
.end method
