.class public final synthetic Lcom/android/systemui/shared/condition/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/condition/Condition;

.field public final synthetic h:Lcom/android/systemui/shared/condition/Condition$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/a;->g:Lcom/android/systemui/shared/condition/Condition;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/a;->h:Lcom/android/systemui/shared/condition/Condition$Callback;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/a;->g:Lcom/android/systemui/shared/condition/Condition;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/a;->h:Lcom/android/systemui/shared/condition/Condition$Callback;

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/shared/condition/Condition;->a(Lcom/android/systemui/shared/condition/Condition;Lcom/android/systemui/shared/condition/Condition$Callback;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
