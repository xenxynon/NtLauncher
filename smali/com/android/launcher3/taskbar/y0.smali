.class public final synthetic Lcom/android/launcher3/taskbar/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/y0;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/y0;->a:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->m(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
