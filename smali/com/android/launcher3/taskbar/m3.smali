.class public final synthetic Lcom/android/launcher3/taskbar/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/m3;->g:Lcom/android/launcher3/taskbar/TaskbarStashController;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/m3;->g:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->d(Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/Alarm;)V

    return-void
.end method
