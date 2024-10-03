.class public final synthetic Lcom/android/systemui/shared/condition/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/condition/Condition$Callback;


# instance fields
.field public final synthetic a:Lk6/t;


# direct methods
.method public synthetic constructor <init>(Lk6/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/b;->a:Lk6/t;

    return-void
.end method


# virtual methods
.method public final onConditionChanged(Lcom/android/systemui/shared/condition/Condition;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/condition/b;->a:Lk6/t;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/condition/ConditionExtensionsKt$toFlow$1;->a(Lk6/t;Lcom/android/systemui/shared/condition/Condition;)V

    return-void
.end method
