.class public final synthetic Lcom/android/quickstep/views/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e0;->g:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/e0;->g:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->E(Lcom/android/quickstep/views/RecentsView;Landroid/view/MotionEvent;)V

    return-void
.end method
