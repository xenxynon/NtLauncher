.class public final synthetic Lcom/android/launcher3/views/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/views/ActivityContext;

.field public final synthetic h:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic i:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/e;->g:Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/views/e;->h:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/launcher3/views/e;->i:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/e;->g:Lcom/android/launcher3/views/ActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/views/e;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/launcher3/views/e;->i:Landroid/os/IBinder;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/views/ActivityContext;->e(Lcom/android/launcher3/views/ActivityContext;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V

    return-void
.end method
