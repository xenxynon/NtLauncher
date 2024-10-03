.class public final synthetic Lcom/android/quickstep/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/OverviewComponentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f3;->g:Lcom/android/quickstep/OverviewComponentObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/f3;->g:Lcom/android/quickstep/OverviewComponentObserver;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->d(Lcom/android/quickstep/OverviewComponentObserver;Ljava/lang/String;)V

    return-void
.end method
