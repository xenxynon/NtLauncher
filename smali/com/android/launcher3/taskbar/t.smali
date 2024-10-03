.class public final synthetic Lcom/android/launcher3/taskbar/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/t;->a:Z

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/t;->a:Z

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->i(ZI)Z

    move-result p0

    return p0
.end method
