.class public final synthetic Lcom/android/launcher3/folder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/BaseFolderIcon;

.field public final synthetic h:Lcom/android/launcher3/folder/FolderNameInfos;

.field public final synthetic i:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/c;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/c;->h:Lcom/android/launcher3/folder/FolderNameInfos;

    iput-object p3, p0, Lcom/android/launcher3/folder/c;->i:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/c;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/folder/c;->h:Lcom/android/launcher3/folder/FolderNameInfos;

    iget-object p0, p0, Lcom/android/launcher3/folder/c;->i:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->d(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method
