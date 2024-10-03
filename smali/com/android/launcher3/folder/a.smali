.class public final synthetic Lcom/android/launcher3/folder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/folder/BaseFolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/a;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/a;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->b(Lcom/android/launcher3/folder/BaseFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void
.end method
