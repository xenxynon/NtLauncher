.class public final synthetic Lcom/android/launcher3/touch/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/touch/WorkspaceTouchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/touch/WorkspaceTouchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/t;->g:Lcom/android/launcher3/touch/WorkspaceTouchListener;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/touch/t;->g:Lcom/android/launcher3/touch/WorkspaceTouchListener;

    invoke-static {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->a(Lcom/android/launcher3/touch/WorkspaceTouchListener;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
