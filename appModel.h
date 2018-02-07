#ifndef APPMODEL_H
#define APPMODEL_H

#include <QObject>

class AppModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(State state
               READ GetState
               NOTIFY StateChanged)
public:
    enum class State
    {
        Loading = 0,
        Ready
    };
    Q_ENUM(State)
public:
    explicit AppModel(QObject *parent = 0);
    ~AppModel(void) {}
    inline State GetState(void) const { return state; }
signals:
    void StateChanged(void);
private:
    State state = State::Loading;
};

Q_DECLARE_METATYPE(AppModel::State)

#endif // APPMODEL_H
