.class public final synthetic Lcom/android/quickstep/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o6;->g:Lcom/android/quickstep/SystemUiProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/o6;->g:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {p0}, Lcom/android/quickstep/SystemUiProxy;->S(Lcom/android/quickstep/SystemUiProxy;)V

    return-void
.end method
