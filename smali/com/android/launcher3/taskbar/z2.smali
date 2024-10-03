.class public final synthetic Lcom/android/launcher3/taskbar/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

.field public final synthetic h:[Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;[Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/z2;->g:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/z2;->h:[Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/z2;->g:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/z2;->h:[Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->c(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;[Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
