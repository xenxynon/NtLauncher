.class public final synthetic Lcom/android/systemui/shared/condition/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/condition/Monitor$1;

.field public final synthetic h:Lcom/android/systemui/shared/condition/Condition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor$1;Lcom/android/systemui/shared/condition/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/h;->g:Lcom/android/systemui/shared/condition/Monitor$1;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/h;->h:Lcom/android/systemui/shared/condition/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/h;->g:Lcom/android/systemui/shared/condition/Monitor$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/h;->h:Lcom/android/systemui/shared/condition/Condition;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/condition/Monitor$1;->a(Lcom/android/systemui/shared/condition/Monitor$1;Lcom/android/systemui/shared/condition/Condition;)V

    return-void
.end method
