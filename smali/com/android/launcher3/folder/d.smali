.class public final synthetic Lcom/android/launcher3/folder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/BigFolderIcon;

.field public final synthetic h:I

.field public final synthetic i:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/BigFolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    iput p2, p0, Lcom/android/launcher3/folder/d;->h:I

    iput-object p3, p0, Lcom/android/launcher3/folder/d;->i:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    iget v1, p0, Lcom/android/launcher3/folder/d;->h:I

    iget-object p0, p0, Lcom/android/launcher3/folder/d;->i:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/folder/BigFolderIcon;->f(Lcom/android/launcher3/folder/BigFolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
