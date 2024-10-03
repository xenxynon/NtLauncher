.class Lcom/android/launcher3/folder/Folder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->access$900(Lcom/android/launcher3/folder/Folder;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget p1, p1, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->needReorder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v1, p1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget p1, p1, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/folder/FolderPagedView;->realTimeReorder(II)V

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    iget p1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    :cond_0
    return-void
.end method
