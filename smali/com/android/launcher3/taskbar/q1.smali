.class public final synthetic Lcom/android/launcher3/taskbar/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/taskbar/q1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/q1;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/q1;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/q1;->g:Lcom/android/launcher3/taskbar/q1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->c(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void
.end method
