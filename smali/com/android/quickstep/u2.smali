.class public final synthetic Lcom/android/quickstep/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/LauncherSwipeHandlerV2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/u2;->g:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/u2;->g:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->m0(Lcom/android/quickstep/LauncherSwipeHandlerV2;Ljava/lang/Boolean;)V

    return-void
.end method
