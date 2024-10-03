.class public final synthetic Lcom/android/launcher3/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/BaseFolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/v4;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/v4;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->s(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    return-void
.end method
